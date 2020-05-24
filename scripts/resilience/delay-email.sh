#!/bin/bash
cd $(dirname $0)/manifests
kubectl apply -f delay-email.yaml
echo "> Atualizado timeout para envio e-mail"