function jar_build --description 'assembly jar file of QAPM/emr'
    if not set -q QAPM_HOME
        echo "🤔 cannot find environment variable QAPM_HOME"
        return 1
    end
    fish -c "
    cd $QAPM_HOME/emr/spark/scala/QAPMSparkProject
    sbt assembly
    "
    if test $status = 0
        echo "🥳 bujar finished with assembly file at $QAPM_HOME/emr/spark/scala/QAPMSparkProject/target/scala-2.11/QAPMSparkProject-assembly-6.1.jar"
    else
        echo "☹️ bujar failed with error code $statue"
    end
    
end
