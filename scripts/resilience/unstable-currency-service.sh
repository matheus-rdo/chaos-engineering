#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f unstable-currency-service.yaml
echo "> Habilitado política de retry no serviço 'currencyservice'"