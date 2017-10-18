#!/bin/bash

# Initialize configuration's
kubectl create configmap logstash-config --from-file=logstash/pipeline/logstash.conf

# Start elastic search
kubectl apply -f es-dep.yaml
kubectl apply -f es-svc.yaml

# Start kibana
kubectl apply -f kibana-dep.yaml
kubectl apply -f kibana-svc.yaml

# Start logstash
kubectl apply -f logstash-dep.yaml
kubectl apply -f logstash-svc.yaml
