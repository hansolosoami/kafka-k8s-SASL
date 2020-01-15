#!/bin/bash

{
./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties &> /dev/null

./bin/kafka-server-start ./etc/kafka/server.properties &> /dev/null

./bin/schema-registry-start ./etc/schema-registry/schema-registry.properties &> /dev/null

./bin/ksql-server-start ./etc/ksql/ksql-server.properties &> /dev/null

./bin/connect-standalone ./etc/schema-registry/connect-avro-standalone.properties ./etc/kafka/connect-file-source.properties ./etc/kafka/connect-file-sink.properties &> /dev/null

./bin/control-center-start ./etc/confluent-control-center/control-center.properties &> /dev/null

./bin/kafka-rest-start ./etc/kafka-rest/kafka-rest.properties &> /dev/null

} &> /dev/null
