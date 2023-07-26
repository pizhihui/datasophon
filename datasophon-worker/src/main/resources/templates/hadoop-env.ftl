export HADOOP_OS_TYPE=${r"${HADOOP_OS_TYPE:-$(uname -s)}"}
case ${r"${HADOOP_OS_TYPE}"} in
  Darwin*)
    export HADOOP_OPTS="${r"${HADOOP_OPTS}"} -Djava.security.krb5.realm= "
    export HADOOP_OPTS="${r"${HADOOP_OPTS}"} -Djava.security.krb5.kdc= "
    export HADOOP_OPTS="${r"${HADOOP_OPTS}"} -Djava.security.krb5.conf= "
  ;;
esac
export HADOOP_PID_DIR=${hadoopHome}/pid
export HDFS_NAMENODE_USER=biadmin
export HDFS_DATANODE_USER=biadmin
export HDFS_JOURNALNODE_USER=biadmin
export HDFS_ZKFC_USER=biadmin
export YARN_RESOURCEMANAGER_USER=biadmin
export YARN_NODEMANAGER_USER=biadmin
export JAVA_HOME=/usr/java/latest
<#list itemList as item>
export ${item.name}=${item.value}
</#list>
export HADOOP_LOG_DIR=${hadoopLogDir}

SH_PATH=${r"$(cd `dirname $0`; pwd)"}

export HDFS_NAMENODE_OPTS="$HDFS_NAMENODE_OPTS -Xms${namenodeHeapSize}g -Xmx${namenodeHeapSize}g -javaagent:${hadoopHome}/jmx/jmx_prometheus_javaagent-0.16.1.jar=27001:${hadoopHome}/jmx/prometheus_config.yml"

export HDFS_DATANODE_OPTS="$HDFS_DATANODE_OPTS -Xms${datanodeHeapSize}g -Xmx${datanodeHeapSize}g -javaagent:${hadoopHome}/jmx/jmx_prometheus_javaagent-0.16.1.jar=27002:${hadoopHome}/jmx/prometheus_config.yml"

export HDFS_JOURNALNODE_OPTS="$HDFS_JOURNALNODE_OPTS -javaagent:${hadoopHome}/jmx/jmx_prometheus_javaagent-0.16.1.jar=27003:${hadoopHome}/jmx/prometheus_config.yml"

export HDFS_ZKFC_OPTS="$HDFS_ZKFC_OPTS -javaagent:${hadoopHome}/jmx/jmx_prometheus_javaagent-0.16.1.jar=27004:${hadoopHome}/jmx/prometheus_config.yml"


