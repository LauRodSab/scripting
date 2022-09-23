#!/bin/bash
#####################################################################
# Nombre: rectangulo2.sh
# Autor: Laura Rodríguez Sabater
# Descripción: Decir el área de un rectángulo
#####################################################################

read -p "Introduzca el alto del rectángulo " alto
echo "Alto:$alto"

read -p "Introduzca el ancho del rectángulo " ancho
echo "Ancho:$ancho"

expr $alto \* $ancho

resultado=$(expr $alto \* $ancho)
echo "El área del rectángulo es $resultado"

