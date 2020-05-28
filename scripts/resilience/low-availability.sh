#!/bin/bash
cd $(dirname $0)/manifests
kubectl scale deployment/adservice --replicas=1
kubectl scale deployment/cartservice --replicas=1
kubectl scale deployment/checkoutservice --replicas=1
kubectl scale deployment/currencyservice --replicas=1
kubectl scale deployment/emailservice --replicas=1
kubectl scale deployment/frontend --replicas=2
kubectl scale deployment/paymentservice --replicas=1
kubectl scale deployment/productcatalogservice --replicas=1
kubectl scale deployment/recommendationservice --replicas=1
kubectl scale deployment/redis-cart --replicas=1
kubectl scale deployment/shippingservice --replicas=1
echo "> Abaixando o número de replicas dos microsserviços"