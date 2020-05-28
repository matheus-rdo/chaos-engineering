#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f ./unstable-currency-service/fault.yaml
echo "> Solicitada atualização do 'currencyservice', para injetar 20% de chance de erro nas requisições"