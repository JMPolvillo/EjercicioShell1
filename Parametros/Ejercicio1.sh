#!/bin/bash

if [ $# -lt 3 ]; then
  echo "Incorrecto, se necesitan mínimo 3 parámetros."
  exit 1
fi

if [ $# -ne 3 ]; then
    echo "Incorrecto, solo puede haber un máximo de 3 parámetros."
    exit 1
fi

echo "El parámetro 1 es: $1"
echo "El parámetro 3 es: $3"