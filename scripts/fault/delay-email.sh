#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f delay-email.yaml
echo "> Iniciando atualização do serviço de e-mail para versão com 15 segundos de delay"