#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f cold-start-product-catalog.yaml
echo "> Atualizando serviço 'productcatalogservice' para versão 'slow'"