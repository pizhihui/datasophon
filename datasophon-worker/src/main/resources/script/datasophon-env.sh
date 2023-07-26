export JAVA_HOME=/usr/java/latest
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME CLASSPATH

export INSTALL_PATH=/opt/datasohpon
export SPARK_HOME=${INSTALL_PATH}/spark-3.1.3
export PYSPARK_ALLOW_INSECURE_GATEWAY=1
export HIVE_HOME=${INSTALL_PATH}/hive-3.1.0

export KAFKA_HOME=${INSTALL_PATH}/kafka-2.4.1
export HBASE_HOME=${INSTALL_PATH}/hbase-2.4.16
export FLINK_HOME=${INSTALL_PATH}/flink-1.15.2
export HADOOP_HOME=${INSTALL_PATH}/hadoop-3.3.3
export HADOOP_CONF_DIR=${INSTALL_PATH}/hadoop-3.3.3/etc/hadoop
export PATH=$PATH:$JAVA_HOME/bin:$SPARK_HOME/bin:$HADOOP_HOME/bin:$HIVE_HOME/bin:$FLINK_HOME/bin:$KAFKA_HOME/bin:$HBASE_HOME/bin


