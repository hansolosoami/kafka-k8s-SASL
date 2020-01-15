export KAFKA_OPTS="-Djava.security.auth.login.config=./etc/kafka/kafka_client_jaas.conf"

./bin/kafka-console-producer --broker-list 192.168.0.194:9092 --topic acl-test --producer.config=config/producer.properties
