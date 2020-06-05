# Engenharia do Caos para resiliência de Arquiteturas em Nuvem

Projeto utilizado no TCC do curso de Sistemas de Informação

Explora a prática da engenharia do caos para construir uma arquitetura de um sistema distribuído na nuvem com alta resiliência e disponibilidade.

## Tecnologias envolvidas

 - Kubernetes
 - Istio
 - Google Cloud Platform

## Configurações na Cloud

### Acessar o Kubernetes Dashboard

1. Habilitar o proxy
`kubectl proxy`

2. Recuperar o Secret Token
``kubectl -n kube-system describe secrets    `kubectl -n kube-system get secrets | awk '/clusterrole-aggregation-controller/ {print $1}'` | awk '/token:/ {print $2}'``

3. Acessar via proxy na seguinte URL
`http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login`  

### Executar localmente - Minikube

 `minikube start --cpus=5 --memory 8GiB --disk-size 32g`

