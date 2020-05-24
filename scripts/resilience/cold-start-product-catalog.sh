#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f cold-start-product-catalog.yaml
echo "> A versão 'v2' do serviço 'productcatalogservice' foi atualizada, e irá receber 10% do tráfego de requisições quando o serviço estiver saudável"