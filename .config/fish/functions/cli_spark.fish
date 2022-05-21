function cli_spark -d "spark client for easily connecting to cluster"
    if test INTRANET_PROXY_JUMP_SERVERS = ''
        kubectl -n default exec -it deploy/kdl-client -- /usr/bin/env HADOOP_CONF_DIR=/etc/hadoop-custom-conf/ bash
    else
        ssh -t $INTRANET_PROXY_JUMP_SERVERS "exec kubectl -n default exec -it deploy/kdl-client -- /usr/bin/env HADOOP_CONF_DIR=/etc/hadoop-custom-conf/ bash"
    end
end
