#!/bin/bash

if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
else
    echo "Env file not found";
    exit 1;
fi

server=${1}
server_user=$SERVER_USER
server_host=$SERVER_HOST
server_pass=$SERVER_PASSWORD
service_name=${2}
server_home=/home/$server_user
service_home=/home/$server_user/public_html/is/${server}/$service_name

git_url=git@gitlab.com:wetelo-interim-sport/${service_name}.git
pm2_exec_path=/home/$server_user/.nvm/versions/node/v12.19.0/bin/pm2

if [[ $server != "staging" ]] && [[ $server != "production" ]]; then
    echo "Invalid server";
    exit 1;
elif [[ "$server" == "staging" ]]; then 
    git_branch="devV2";
    pm2_prefix="st";
elif [[ "$server" == "production" ]]; then
    git_branch="prodV2";
    pm2_prefix="prod";
fi

if [[ $service_name == "interim-sport-spa" ]]; then 
    command="NODE_ENV=production next build && $pm2_exec_path reload $pm2_prefix-is-ssr";
elif [[ $service_name == "interim-sport-api" ]]; then
    command="$pm2_exec_path reload $pm2_prefix-is-api";
elif [[ $service_name == "interim-sport-root-spa" ]]; then
    command="npm run build";
elif [[ $service_name == "interim-sport-root-api" ]]; then
    command="$pm2_exec_path reload $pm2_prefix-is-root-api";
else 
    echo "Invalid service name";
    exit 1;
fi