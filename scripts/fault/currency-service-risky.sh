#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f currency-service-risky.yaml
echo "> O novo serviço de conversão de moedas versão 'risky' foi criado"
echo "> 15% do tráfego será roteado para este novo serviço"