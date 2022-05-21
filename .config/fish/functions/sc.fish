function sc -d "client for spark 2.4.5"
    kp -n default exec -it deploy/kdl-client -- /usr/bin/env HADOOP_CONF_DIR=/etc/hadoop-custom-conf/ bash
end
