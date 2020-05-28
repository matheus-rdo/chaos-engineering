#!/bin/bash
cd $(dirname $0)/manifests

kubectl delete -f ./cold-start-product-catalog.yaml
kubectl delete -f ./cascading-failure-product-catalog.yaml
kubectl delete -f ./cascading-failure-payment-service.yaml
kubectl delete -f ./unstable-currency-service.yaml
kubectl apply -f ./availability/low-availability.yaml
echo "> Todas as funcionalidades de resiliência foram desativadas"