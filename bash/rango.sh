#####################################################################
# Nombre: existe.sh
# Autor: Laura Rodríguez Sabater
# Descripción: Si el valor es mayor o igual que el minimo y 
#menor o igual que el maximo 
#################################################################### 
minimo=$1
maximo=$2
valor=$3
if  [ "$valor" -ge $minimo -a "$valor" -le $maximo ]
then 
        echo El valor "$valor" está en el rango de $minimo a $maximo
else
        echo El valor "$valor" está fuera del rango de $minimo a $maximo
fi 

