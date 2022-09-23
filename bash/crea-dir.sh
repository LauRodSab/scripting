
#!/bin/bash

#si no se pasa el parámetro al script, muestra un mensaje de error
#si <directorio> no existe, lo crea
#le asigna los permisos 700 (rwx----)

directorio=$1

#Comprueba si $directorio está vacío

if [ -z "$directorio" ]
then
        echo "Debe especificar un directorio"
        exit 1
fi
#Si el directorio está vacío sale el mensaje y sale poniendo un 1, que indica
#error

#Comprobar si $directorio existe y es un directorio

if [ -f $directorio ]
then 
        echo "$directorio no es un directorio"
	exit 1
#Si es fichero sale mensaje y sale poniendo 1

elif [ ! -d  $directorio ]
then
        echo "Creando el directorio $directorio"
        mkdir $directorio
else 
        echo "$directorio ya existe"
fi

#Se le asigna los permisos 700 (rwx------)
chmod 700 $directorio
#Si es directorio asigna los permisos y sale del script

