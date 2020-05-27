#!/bin/bash

FIRST_ARG=$1

# Caso não seja fornecido nenhum argumento, assume 30 segundos de intervalo
PERIOD=${FIRST_ARG:-30}

echo "> Serviço iniciado"
echo "> A cada $PERIOD segundos, um POD aleatório será deletado"

while true; do
    sleep $PERIOD
    randomPod=$(#!/bin/bash
        kubectl get pods -o custom-columns=POD:metadata.name,READY-true:status.containerStatuses[*].ready | grep "true,true" | shuf -n 1 | awk '{ print $1 }'
    )
    kubectl delete pod $randomPod --grace-period=0 > /dev/null
    echo "> $randomPod foi deletado"
done
