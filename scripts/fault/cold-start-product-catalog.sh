#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f cold-start-product-catalog.yaml
echo "> A versão 'v2' do serviço 'productcatalogservice' foi criada, e irá receber imediatamente 10% do tráfego de requisições"