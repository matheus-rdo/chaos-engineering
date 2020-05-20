#!/bin/bash
cd $(dirname $0)/manifests
kubectl delete -f .
echo "> Todas as injeções de falhas foram desativadas"