#!/bin/bash
set -x

req_pkg='sshpass'
if ! dpkg -s $req_pkg >/dev/null 2>&1; then
    sudo apt-get --yes install $req_pkg
fi

source $(pwd)/global_config.sh
echo "Connecting to host $server_host...";

sshpass -p $server_pass ssh $server_user@$server_host;