# Command Kafka

## Creation des topics Kafka (hors Docker)

kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 1 --topic Topic1

kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 1 --topic Topic2

kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 1 --topic Topic3

---

## Creation des topics Kafka (avec docker-compose)

Placez vous dans la dossier contenant le docker-compose pour lancer ces commandes.

docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic1

docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic2

docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic3
