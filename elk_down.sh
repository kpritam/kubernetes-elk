#!/bin/bash

# Delete elastic search
kubectl delete -f es-dep.yaml
kubectl delete -f es-svc.yaml

# Delete kibana
kubectl delete -f kibana-dep.yaml
kubectl delete -f kibana-svc.yaml

# Delete logstash
kubectl delete -f logstash-dep.yaml
kubectl delete -f logstash-svc.yaml

# Delete configuration's
kubectl delete configMap logstash-config
