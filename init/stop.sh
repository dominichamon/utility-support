#!/bin/bash

source /etc/mlab/slice-functions
set -e

# NOTE: kill the service if it is running.
source $SLICEHOME/init/config.sh
echo "Stopping servers:"
for port in $UDP_PORT_LIST ; do
    stop_ncat $port --udp
done
for port in $TCP_PORT_LIST ; do
    stop_ncat $port 
done
