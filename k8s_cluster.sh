#!/bin/bash

sudo minikube start --vm-driver=none

kubectl get all
