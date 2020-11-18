#!/bin/sh

frontend="interim-sport-spa"
if [ ! -d "$frontend" ]
then
    echo "Repository $frontend does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$frontend.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$frontend.git"

   if [ -d "$frontend" ]
   then
       cd $frontend && git checkout devV2 && cd ..
   fi
else
    echo "Repository $frontend exists. Pass"
fi

api="interim-sport-api"
if [ ! -d "$api" ]
then
    echo "Repository $api does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$api.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$api.git"

   if [ -d "$api" ]
   then
       cd $api && git checkout devV2 && cd ..
   fi
else
    echo "Repository $api exists. Pass"
fi


admin_frontend="interim-sport-root-spa"
if [ ! -d "$admin_frontend" ]
then
    echo "Repository $admin_frontend does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$admin_frontend.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$admin_frontend.git"
   if [ -d "$admin_frontend" ]
   then
       cd $admin_frontend && git checkout devV2 && cd ..
   fi
else
    echo "Repository $admin_frontend exists. Pass"
fi

admin_api="interim-sport-root-api"
if [ ! -d "$admin_api" ]
then
    echo "Repository $admin_api does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$admin_api.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$admin_api.git"
   if [ -d "$admin_api" ]
   then
       cd $admin_api && git checkout devV2 && cd ..
   fi
else
    echo "Repository $admin_api exists. Pass"
fi

media="interim-sport-media"
if [ ! -d "$media" ]
then
    echo "Repository $media does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$media.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$media.git"
   if [ -d "$media" ]
   then
       cd $media && git checkout devV2 && cd ..
   fi
else
    echo "Repository $media exists. Pass"
fi

messenger="interim-sport-messenger"
if [ ! -d "$messenger" ]
then
    echo "Repository $messenger does not exists."
    echo "Cloning from git@gitlab.com:wetelo-interim-sport/$messenger.git"
    git clone "git@gitlab.com:wetelo-interim-sport/$messenger.git"
   if [ -d "$messenger" ]
   then
       cd $messenger && git checkout develop && cd ..
   fi
else
    echo "Repository $messenger exists. Pass"
fi