#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f cascading-failure-payment-service.yaml
echo "> Habilitado circuit breaker no serviço 'paymentservice'"