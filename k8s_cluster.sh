#!/bin/bash

#sudo minikube start --vm-driver=none

#sudo kubectl get all

kubectl create -f ./kubernetes_config/k8s_deployment_config.yml
kubectl create -f ./kubernetes_config/k8s_service_config.yml
kubectl get all

#dockerpath="sneakybytes/capstone-httpd:latest"
#kubectl run webapp --image=docker.io/$dockerpath --port=80 --generator=run-pod/v1
#kubectl expose pod/webapp --type=NodePort --port 80 --target-port 80