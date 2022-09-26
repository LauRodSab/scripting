#!/bin/bash
user=$1

#Compruebo si se ha escrito el usuario, si no existe lo pide
if [ -z $user ]
then
        read -p "Introduce nombre de usuario " user
fi


cat /etc/passwd | grep "$user" > /dev/null && E=0 || E=1 

if [ $E -eq 1 ] 
then   
	echo "El usuario $user no existe"
	exit 1
else
        echo "Nombre: $(grep -w $1 /etc/passwd | cut -d: -f1)"
        echo "UID: $(grep -w $1 /etc/passwd | cut -d: -f3)"
        echo "GID: $(grep -w $1 /etc/passwd | cut -d: -f4)"
        echo "Home: $(grep -w $1 /etc/passwd | cut -d: -f6)"
        echo "Shell: $(grep -w $1 /etc/passwd | cut -d: -f7)"
fi


