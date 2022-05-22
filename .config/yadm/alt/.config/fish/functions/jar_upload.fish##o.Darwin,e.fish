function jar_upload -a cluster -d "upload jar file of QAPM/emr to HDFS"
    if not set -q QAPM_HOME
        echo "Cannot find environment variable QAPM_HOME. Have you clone the repository?"
        return 1
    end

    if not contains $cluster "tencent_public" "cloud_public" "qq" "gray" "test"
        echo "Unknown target cluster '$cluster', only support 'tencent', 'public', 'qq', 'gray' and 'test' now."
        return 2
    end
    set -f JAR_PATH "/bin/tdem/$cluster/spark/QAPMSparkProject-assembly-6.1.jar"

    function upload_file -a src_path,dst_path
        set -l CLIENT_POD (kp -n default get pods | rg 'kdl-client' | head -1 | awk '{print $1}')
        if not set -q CLIENT_POD
            echo "Cannot get client pod, is it running?"
            return 3
        end
        if test ! -e $src_path
            echo "Cannot find source file, does it exist?"
            return 4
        end

        if test INTRANET_PROXY_JUMP_SERVERS = ''
            kubectl -n default cp $src_path $CLIENT_POD:"/tmp/upload_by_$HOST"
            kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)"
            kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path"
            kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/upload_by_$HOST $dst_path"
        else
            scp $src_path $INTRANET_PROXY_JUMP_SERVERS:"/tmp/upload_by_$HOST"
            ssh $INTRANET_PROXY_JUMP_SERVERS "fish -c \"
            kubectl -n default cp "/tmp/upload_by_$HOST" $CLIENT_POD:"/tmp/upload_by_$HOST"
            kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)\"
            kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path\"
            kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/upload_by_$HOST $dst_path\"
            \"
            "
        end
        functions -e upload_file
    end

    upload_file $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar $JAR_PATH &
    function upjar_ended --on-process-exit $last_pid
        if test $argv[3] = 0
            terminal-notifier -title 'upjar' \
                -subtitle '🥳' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "upjar finished with jar file to cluster $cluster"
        else
            terminal-notifier -title 'upjar' \
                -subtitle '☹️' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "upjar failed with error code $statue"
        end
    end
end
