#!/bin/bash
user=$1

#Si no se especifica un usuario se pide que lo escribas

read -p "Introduce nombre de usuario " user

if [ -z $user ]
then
        cat /etc/passwd | grep $user
        echo "$user"

fi

if [ -z $user ]
then
	cat /etc/passwd | grep $user
        echo "El usuario $user no existe"
	exit 1
fi

if [ -f $user ]
then 
	cat /etc/passwd | grep $user
	echo "$user"
fi
