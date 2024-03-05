#!/bin/sh

# sudo apt-get update -y && sudo apt-get install -y --no-install-recommends openjdk-17-jdk-headless ca-certificates wget

export SPARK_VERSION=3.3.2
export HADOOP_VERSION=3
export XBEANS_VERSION=4.10
export SCALA_VERSION=-scala2.13
export MIRROR=https://archive.apache.org/dist/spark/
export SPARK_HOME=/opt/spark-3.3.2
export SPARK_MASTER_PORT=7077
export SPARK_WEBUI_PORT=8080

# Download dataset
mkdir worker/data

wget --no-check-certificate -O ./worker/data/ml-latest-small.zip http://files.grouplens.org/datasets/movielens/ml-latest-small.zip     
unzip -d ./worker/data/ ./worker/data/ml-latest-small.zip     
rm ./worker/data/ml-latest-small.zip  
   
wget --no-check-certificate -O ./worker/data/ml-latest.zip http://files.grouplens.org/datasets/movielens/ml-latest.zip     
unzip -d ./worker/data/ ./worker/data/ml-latest.zip     
rm ./worker/data//ml-latest.zip

# Uncomment this to Install Spark and Scala
# wget --progress=bar:force https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}${SCALA_VERSION}.tgz
# mkdir -p $SPARK_HOME
# tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}${SCALA_VERSION}.tgz --directory=$SPARK_HOME --strip 1

