#!/bin/bash
cd $(dirname $0)/manifests
kubectl delete -f .
kubectl apply -f ./cascading-failure-payment-service/original.yaml
echo "> Todas as injeções de falhas foram desativadas"