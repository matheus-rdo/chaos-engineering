#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f ./cascading-failure-payment-service/fault.yaml
echo "> Solicitada atualização do 'paymentservice', para injetar 15s de delay nas requisições"