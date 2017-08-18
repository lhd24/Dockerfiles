#!/usr/bin/env bash

export HADOOP_CONF_DIR=$HADOOP_INSTALL/etc/hadoop
export YARN_CONF_DIR=$HADOOP_INSTALL/etc/hadoop
export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH