function jar_upload -a cluster -d "upload jar file of QAPM/emr to HDFS"
    if not set -q QAPM_HOME
        echo "Cannot find environment variable QAPM_HOME. Have you clone the repository?"
        return 1
    end

    if not contains $cluster tencent_public cloud_public qq gray test
        echo "Unknown target cluster '$cluster', only support 'tencent', 'public', 'qq', 'gray' and 'test' now."
        return 2
    end
    set -f JAR_PATH "/bin/tdem/$cluster/spark/QAPMSparkProject-assembly-6.1.jar"

    {% if yadm.os == "Darwin" %}
    upload2hdfs $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar $JAR_PATH &
    function upjar_ended --on-process-exit $last_pid
        if test $argv[3] = 0
            terminal-notifier -title upjar \
                -subtitle '🥳' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "upjar finished with jar file to cluster $cluster"
        else
            terminal-notifier -title upjar \
                -subtitle '☹️' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "upjar failed with error code $statue"
        end
    end
    {% else %}
    upload2hdfs $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar $JAR_PATH
    if test $status = 0
        echo "🥳 upjar finished with jar file to cluster $cluster"
    else
        echo "☹️ upjar failed with error code $statue"
    end
    {% endif %}
end
