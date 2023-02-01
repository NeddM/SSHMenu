#!/bin/bash

animacionConectando(){
  clear
  echo -n "Conectando a la máquina"
  sleep 1
  echo -n "."
  sleep 1
  echo -n "."
  sleep 1
  echo -n "."
  clear
}

animacionSalir(){
  clear
  echo "Saliendo del programa"
  sleep 1
  clear
  exit
}

# Lista de Conexiones
MAQUINA1=nombre@ipDeLaMáquina

# Cabecera del script
echo "  - - - - - - - - - - - -"
echo "  - - SSH DISPONIBLES - -"
echo "  - - - - - - - - - - - -"
echo ""
sleep 1
echo -e "\t0. SALIR"
echo -e "\t1. RaspberryPi casa"

echo ""
echo -n "  Selecciona la máquina a la que te quieres conectar: "
read RESPUESTA


# Respuesta máquina 1
if [ $RESPUESTA == 1 ];
then
  animacionConectando
  ssh $MAQUINA1
  fi

# Respuesta SALIR
if [ $RESPUESTA == 0 ];
then 
  animacionSalir
fi
