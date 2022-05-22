function upload2hdfs -a src_path,dst_path -d "upload file to HDFS with proxy jump"
    if test INTRANET_PROXY_JUMP_SERVERS = ''
        set -f CLIENT_POD (kubectl -n default get pods | rg 'kdl-client' | head -1 | awk '{print $1}')
    else
        set -f CLIENT_POD (ssh $INTRANET_PROXY_JUMP_SERVERS "exec kubectl -n default get pods" | rg 'kdl-client' | head -1 | awk '{print $1}')
    end
    if not set -q CLIENT_POD
        echo "Cannot get client pod, is it running?"
        return 1
    end
    if test ! -e $src_path
        echo "Cannot find source file, does it exist?"
        return 2
    end

    if test INTRANET_PROXY_JUMP_SERVERS = ''
        kubectl -n default cp $src_path $CLIENT_POD:"/tmp/upload_by_$HOST"
        kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)"
        kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path"
        kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/upload_by_$HOST $dst_path"
    else
        scp $src_path $INTRANET_PROXY_JUMP_SERVERS:"/tmp/upload_by_$HOST"
        ssh $INTRANET_PROXY_JUMP_SERVERS "exec fish -c \"
        kubectl -n default cp "/tmp/upload_by_$HOST" $CLIENT_POD:"/tmp/upload_by_$HOST"
        kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)\"
        kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path\"
        kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/upload_by_$HOST $dst_path\"
        \"
        "
    end
end