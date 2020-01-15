export KAFKA_OPTS="-Djava.security.auth.login.config=./etc/kafka/kafka_client_jaas.conf"

#./bin/kafka-console-consumer --topic check-v1  --consumer.config=config/consumer.properties --consumer-property user=test --bootstrap-server localhost:9092 --from-beginning --enable-systest-events 
./bin/kafka-console-consumer --topic acl-test  --consumer.config=config/consumer.properties --from-beginning --bootstrap-server 192.168.0.194:9092 
