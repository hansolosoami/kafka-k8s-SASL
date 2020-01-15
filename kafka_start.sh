bin/zookeeper-server-stop
export KAFKA_OPTS="-Djava.security.auth.login.config=./etc/kafka/zookeeper_jaas.conf"
bin/zookeeper-server-start etc/kafka/zookeeper.properties &

bin/kafka-server-stop
export KAFKA_OPTS="-Djava.security.auth.login.config=./etc/kafka/kafka_server_jaas.conf"
bin/kafka-server-start etc/kafka/server.properties
