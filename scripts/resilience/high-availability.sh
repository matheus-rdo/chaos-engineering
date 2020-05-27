#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f availability/high-availability.yaml
echo "> Aumentado o número de replicas dos microsserviços"