#!/bin/bash

sudo minikube start --vm-driver=none

sudo kubectl get all

sudo kubectl create -f ./kubernetes_config/k8s_deployment_config.yml

sudo kubectl create -f ./kubernetes_config/k8s_service_config.yml