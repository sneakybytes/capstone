#!/bin/bash

#sudo minikube start --vm-driver=none

#sudo kubectl get all

kubectl create -f ./kubernetes_config/k8s_deployment_config.yml

kubectl create -f ./kubernetes_config/k8s_service_config.yml

sudo kubectl get all