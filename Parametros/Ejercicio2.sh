#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usa el siguiente comando: $0 nombre_del_archivo.txt"
    exit 1
fi

archivo=$1

if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

cantidad_parametros=$(wc -w < "$archivo")

echo "En el archivo $archivo existen $cantidad_parametros parámetros."
