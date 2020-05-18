#!/bin/bash

FIRST_ARG=$1

# Caso não seja fornecido nenhum argumento, assume 30 segundos de intervalo
PERIOD=${FIRST_ARG:-30}

echo "> Serviço iniciado"
echo "> A cada $PERIOD segundos, um POD aleatório será deletado"

while true; do
    sleep $PERIOD
    randomPod=$(kubectl get pods -o custom-columns=:metadata.name | sed -r '/^\s*$/d' | shuf -n 1)
    #TODO: Filtrar e deletar o POD
    echo "> $randomPod foi deletado"
done
