#!/bin/bash

# accept user name as argument
USER=$1
USERID=$2
GROUPID=$3


# rename user and group to new name
# check if user "user" exists
if id -u user > /dev/null 2>&1; then
    usermod -l $USER -u $USERID user
fi

# check if group "group" exists
if id -g user > /dev/null 2>&1; then
    groupmod -n $USER -g $GROUPID user
fi

# change user and group ownership of home directory
chown -R $USERID:$GROUPID /home/projector-user
chown -R $USERID:$GROUPID /projector/ide/bin
chown $USERID:$GROUPID run.sh

