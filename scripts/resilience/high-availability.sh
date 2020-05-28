#!/bin/bash
cd $(dirname $0)/manifests
kubectl scale deployment/adservice --replicas=2
kubectl scale deployment/cartservice --replicas=2
kubectl scale deployment/checkoutservice --replicas=2
kubectl scale deployment/currencyservice --replicas=2
kubectl scale deployment/emailservice --replicas=2
kubectl scale deployment/frontend --replicas=3
kubectl scale deployment/paymentservice --replicas=2
kubectl scale deployment/productcatalogservice --replicas=2
kubectl scale deployment/recommendationservice --replicas=2
kubectl scale deployment/redis-cart --replicas=2
kubectl scale deployment/shippingservice --replicas=2
echo "> Aumentado o número de replicas dos microsserviços"