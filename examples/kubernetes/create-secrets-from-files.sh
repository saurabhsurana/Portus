#!/bin/bash

NAMESPACE=${NAMESPACE:-default}

# Certificates
kubectl create secret generic certificates --from-file=portus.key=./certificates/portus.key --from-file=portus.crt=./certificates/portus.crt --namespace $NAMESPACE

# Registry configuration
kubectl create secret generic registry-config --from-file=config.yml=./registry/config.yml --from-file=init=./registry/init --namespace $NAMESPACE
