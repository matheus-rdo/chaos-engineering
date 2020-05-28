#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f ./permanents/rolling-update-frontend.yaml
echo "> Foi iniciada a atualização de versão do frontend"