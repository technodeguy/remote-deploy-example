#!/bin/bash

server=${1}
server_user=debian
server_host=146.59.147.254
server_pass=swVWYV5C8SSy
service_name=${2}
server_home=/home/$server_user
service_home=/home/$server_user/public_html/is/${server}/$service_name

git_url=git@gitlab.com:wetelo-interim-sport/${service_name}.git

if [[ "$server" == "staging" ]]; then 
    git_branch="devV2";
elif [[ "$server" == "production" ]]; then
    git_branch="prodV2";
else
    echo "Invalid server";
    exit 1;
fi