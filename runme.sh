#!/bin/bash
namespace=dev-andrew-1

if ! kubectl create namespace $namespace
	then
		echo "namespace '$namespace' exists" 
elif kubectl create namespace $namespace
        then
		echo "namespace '$namespace' created"
fi

kubectl apply -f ingress-controller -n $namespace
