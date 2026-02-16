#!/bin/bash

echo " creation of user"

read -p "emter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo " creation of user completed"

sudo userdel "$username"

echo "deleton of useer complete"

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"
else
	echo "the user was not deleted"
fi
