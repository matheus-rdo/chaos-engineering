#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f ./unstable-currency-service.yaml
echo "> Solicitada criação do 'currencyservice' na versão 'risky', para injetar 20% de chance de erro nas requisições"