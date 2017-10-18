# kubernetes-elk
Example to set up entire ELK (Elastic Search, Logstash and Kibana) stack with kubernetes and minikube

### Pre-requisite

- Docker

- VirtualBox

- Minikube or any existing kubernetes cluster(aws, gce etc.) up and running

### How to Run

- Execute `elk_up.sh` script from shell

    This will deploy and start following services:
    - Elastic Search 
    - Logstash
    - Kibana

### Test (on Minkube local cluster)

- Run `minikube dashboard` and view logs from all the components

- Run `minikube service kibana`, this will open kibana dashboard in browser
	- Default `username:password = elastic:changeme`

- Logstash is listening for log messages on port 5000 and expecting logs in JSON format

### Cleanup

- Execute `elk_down.sh` script from shell, which will remove all the deployments, services and configMaps

- Run `minikube stop` to stop minikube cluster