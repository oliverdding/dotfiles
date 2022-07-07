function cli_spark -d "spark client for easily connecting to cluster"
    execute_in_devcloud "kubectl -n default exec -it deploy/kdl-client -- /usr/bin/env HADOOP_CONF_DIR=/etc/hadoop-custom-conf/ bash"
end
