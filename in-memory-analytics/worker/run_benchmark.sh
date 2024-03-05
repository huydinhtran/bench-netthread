#!/usr/bin/env bash

SPARK_HOME=/opt/spark-3.3.2
RATINGS=$(pwd)/myratings.csv
DATASET=$(pwd)/data/ml-latest  #ml-latest (large) or ml-latest-small 
BENCHMARK_JAR=$(pwd)/movielens-als-2.0.jar


echo "Executing with: DATASET:${DATASET} RATINGS:${RATINGS}"
echo "                SPARK_OPTIONS:"$@""
exec ${SPARK_HOME}/bin/spark-submit --class MovieLensALS "$@" \
      --driver-memory 4g --executor-memory 4g --master spark://192.168.254.1:7077 \
      ${BENCHMARK_JAR} $DATASET $RATINGS

