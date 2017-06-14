#!/bin/bash

${TOMCAT_HOME}/bin/startup.sh

if [ $# -gt 0 ]; then
	exec $@
fi