# Replace "kafka-topics.sh" 
# by "kafka-topics" or "kafka-topics.bat" based on your system # (or bin/kafka-topics.sh or bin\windows\kafka-topics.bat if you didn't setup PATH / Environment variables)

kafka-topics.sh 

kafka-topics.sh --bootstrap-server localhost:9092 --list  

kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --create #No funciona

kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3 #No funciona

kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3 --replication-factor 2 #No funciona solo con 1 broker

# Create a topic (working)
kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --create --partitions 3 --replication-factor 1

# List topics
kafka-topics.sh --bootstrap-server localhost:9092 --list 

# Describe a topic
kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --describe

# Delete a topic 
kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --delete
# (only works if delete.topic.enable=true)