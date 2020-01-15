./bin/schema-registry-stop
export KAFKA_OPTS="-Djava.security.auth.login.config=./etc/kafka/kafka_server.conf"
./bin/schema-registry-start ./etc/schema-registry/schema-registry.properties &

