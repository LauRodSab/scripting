#!/bin/bash
#####################################################################
# Nombre: rectangulo2.sh
# Autor: Laura Rodríguez Sabater
# Descripción: ancho x alto
#####################################################################
ancho=$1
alto=$2
area=$(expr $ancho \* $alto)
echo $area

