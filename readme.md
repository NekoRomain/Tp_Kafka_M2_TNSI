# TP Kafka

## Par Wangon Romain, Tréhou Thomas, Displaire Thomas

---

- Kafka_Docker contient le docker-compose ainsi que les fichiers nécessaire pour créer les Topics
- Postgres_Docker contient le docker-compose ainsi ques les fichiers pour créer les tables (la création de la base se faisent grâce au docker-compose). Ce dossier contient aussi les requêtes faites dans le code sur la base postgre.
- Kafka_C2P3 : projet Consumer 2 Producer 3
- Tp_Kafka_C1 : projet Consumer 1
- Tp_Kafka_P1 : projet Producer 1
- Tp_Kafka_P2C3 : projet Consumer 3 Producer 2
- Fichiers .jar des projets

---

Etapes:

1. Lancer les docker-compose pour Kafka et Postgre
2. Lancer la commande de création des tables pour postgre : docker container exec -i postgres_db_1 psql -h localhost -d tpkafka -U postgres -p 5432 -a -q requete.sql < creationTable.sql (ATTENTION, il vous faut vous placer dans le même dossier que le docker-compose.yml de postgre et du fichier creationTable.sql)
3. Lancer les commandes de créations des Topics Kafka (placer vous au préalable dans le même mossier que le docker-compose de Kafka, voir Creation_topic.md dans le dossier Kafka_Docker) :
   - docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic1
   - docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic2
   - docker-compose exec broker kafka-topics --zookeeper zookeeper:2181 --create --replication-factor 1 --partitions 1 --topic Topic3
4. Lancer d'abord dans une nouvelle console Tp_Kafka_C1.jar avec la commande : java -jar Tp_Kafka_C1.jar
5. Lancer ensuite dans une nouvelle console Tp_Kafka_P1 avec la commande : java -jar Tp_Kafka_P1.jar
6. Puis lancer Tp_Kafka_C2P3.jar avec la commande : java -jar Tp_Kafka_C2P3.jar
7. Enfin lancer Tp_Kafka_P2C3.jar dans une nouvelle console avec la commande java -jar Tp_Kafka_P2C3.jar (Attention, lors du premier lancement, il se peut que la commande rentrer (exemple: get_global_values) ne retourne rien. Il faut alors fermer et relancer Tp_Kafka_P2C3.jar).
