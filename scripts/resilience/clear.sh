#!/bin/bash
cd $(dirname $0)/manifests

kubectl delete -f ./cold-start-product-catalog.yaml
echo "> Todas as funcionalidades de resiliência foram desativadas"