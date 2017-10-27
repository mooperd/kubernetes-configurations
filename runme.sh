#!/bin/bash
namespace=dev-0
kubectl create namespace $namespace
kubectl apply -f ingress-controller -n dev-andrew-2
