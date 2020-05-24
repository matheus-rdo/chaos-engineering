#!/bin/bash
cd $(dirname $0)/manifests

# Feito arquivo a arquivo pois a ideia é não deletar o update do frontend
kubectl delete -f ./cold-start-product-catalog.yaml
echo "> Todas as funcionalidades de resiliência foram desativadas"