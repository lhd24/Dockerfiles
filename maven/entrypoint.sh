#!/bin/bash

${NEXUS_HOME}/nexus-${NEXUS_VERSION}/bin/nexus start 

if [ $# -gt 0 ]; then
	exec $@
fi