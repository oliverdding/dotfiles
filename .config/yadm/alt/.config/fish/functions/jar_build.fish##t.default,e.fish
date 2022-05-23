function jar_build --description 'assembly jar file of QAPM/emr'
    if not set -q QAPM_HOME
        echo "🤔 cannot find environment variable QAPM_HOME"
        return 1
    end
{% if yadm.os == "Darwin" %}
    fish -c "
    cd $QAPM_HOME/emr/spark/scala/QAPMSparkProject
    sbt assembly
    " &>/dev/null &
    function bujar_ended --on-process-exit $last_pid
        if test $argv[3] = 0
            terminal-notifier -title 'build jar' \
                -subtitle '🥳' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "jar_build finished with assembly file at $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar"
        else
            terminal-notifier -title 'build jar' \
                -subtitle '☹️' \
                -group qapm \
                -ignoreDnD \
                -sender $__CFBundleIdentifier \
                -message "jar_build failed with error code $statue"
        end
    end
{% else %}
    fish -c "
    cd $QAPM_HOME/emr/spark/scala/QAPMSparkProject
    sbt assembly
    "
    if test $status = 0
        echo "🥳 jar_build finished with assembly file at $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar"
    else
        echo "☹️ jar_build failed with error code $statue"
    end
{% endif %}
end
