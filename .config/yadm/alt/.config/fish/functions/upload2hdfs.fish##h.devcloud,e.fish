function upload2hdfs -a src_path dst_path -d "upload file to HDFS with proxy jump"
    set -f CLIENT_POD (kubectl -n default get pods | rg 'kdl-client' | head -1 | awk '{print $1}')
    if not set -q CLIENT_POD
        echo "Cannot get client pod, is it running?"
        return 1
    end
    if test ! -e $src_path
        echo "Cannot find source file, does it exist?"
        return 2
    end

    kubectl -n default cp $src_path $CLIENT_POD:"/tmp/upload_by_$(uname -n)"
    kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -mkdir -p $(dirname $dst_path)"
    kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -rm -f $dst_path"
    kubectl -n default exec $CLIENT_POD -- bash -c "hdfs --config /etc/hadoop-custom-conf/ dfs -put /tmp/upload_by_$(uname -n) $dst_path"
end