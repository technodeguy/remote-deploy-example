#!/bin/bash
set -x

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
fi

req_pkg='sshpass'
if ! dpkg -s $req_pkg >/dev/null 2>&1; then
    sudo apt-get --yes install $req_pkg
fi

source $(pwd)/global_config.sh
echo "Connecting to $server\`s $service_name project to host $server_host...";

sshpass -p $server_pass ssh $server_user@$server_host