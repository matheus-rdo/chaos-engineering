#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f ./permanents/cold-start-product-catalog.yaml
echo "> Atualizando serviço 'productcatalogservice' para versão 'slow'"
echo "> O Serviço só receberá tráfego quando sinalizar estar SAUDÁVEL"