#!/bin/bash

service ssh start

if [ $# -gt 0 ]; then
	exec $@
fi