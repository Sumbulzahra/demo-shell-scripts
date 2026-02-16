#!/bin/bash

<<info
this is an explanation of functons
info

function create_user {
read -p "enter the username:" username

sudo useradd -m $username

echo "user created successfully"
}

create_user
