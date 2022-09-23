#!/bin/bash

script=$1
#Si no se le pone nombre al script este sale
if [ -z "$script" ]
then 
	echo "Debe especificar un script"
	exit 1
fi
#Si el nombre del script existe y es un ficheroo un 
#directorio, termina
if [ -e $script ]  
then 
	echo "Este script o directorio ya existe"
	exit 1
#Si el script no existe, se crea y se le dan permisos de 
#ejecución, se abre el editor
else
	echo "#!/bin/bash" > $script
	chmod +x $script
	nano $script
fi
