#!/bin/bash
cd $(dirname $0)/manifests
kubectl delete -f .
echo "> Todas as funcionalidades de resiliência foram desativadas"