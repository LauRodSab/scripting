#!/bin/bash

numero=$(cat resultado.txt)
numero=$(expr $numero + 1)
echo $numero > resultado.txt 
