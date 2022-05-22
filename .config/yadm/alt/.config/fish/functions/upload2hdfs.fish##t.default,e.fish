function upload2hdfs -a src_path dst_path -d "upload file to HDFS with proxy jump"
    set -f CLIENT_POD (ssh $INTRANET_PROXY_JUMP_SERVERS "exec kubectl -n default get pods" | rg 'kdl-client' | head -1 | awk '{print $1}')
    if not set -q CLIENT_POD
        echo "Cannot get client pod, is it running?"
        return 1
    end
    if test ! -e $src_path
        echo "Cannot find source file, does it exist?"
        return 2
    end

    {% if yadm.hostname == "devcloud" %}
    cp $src_path "/tmp/file_to_hdfs_by_$(uname -n)"
    {% else %}
    scp $src_path $INTRANET_PROXY_JUMP_SERVERS:"/tmp/upload_by_$(uname -n)"
    {% endif %}
    execute_in_devcloud bash -c "'
    kubectl -n default cp \"/tmp/file_to_hdfs_by_$HOST\" $CLIENT_POD:\"/tmp/file_to_hdfs_by_$(uname -n)\"
    kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)\"
    kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path\"
    kubectl -n default exec $CLIENT_POD -- bash -c \"hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/file_to_hdfs_by_$(uname -n) $dst_path\"
    '"
end
