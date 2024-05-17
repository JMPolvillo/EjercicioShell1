#!/bin/bash

read -p "Introduce tu día de nacimiento: " d_int
read -p "Introduce tu mes de nacimiento: " m_int
read -p "Introduce año de nacimiento: " a_int

echo "Feca de nacimiento: $d_int-$m_int-$a_int"

d_act=$(date +%d)
m_act=$(date +%m)
a_act=$(date +%Y)

echo "Fecha actual: $d_act-$m_act-$a_act"


let edad=$a_act-$a_nac

if [ $m_act -lt $m_nac ]; then

    ((edad--))

    elif [ $m_nac -eq $m_act -a $d_act -lt $d_nac ]; then
       
        ((edad--))
    fi

echo "-----------Age-------------------"
echo "You have" $edad "years"