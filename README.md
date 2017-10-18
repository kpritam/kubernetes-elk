# kubernetes-elk
Example to set up entire ELK (Elastic Search, Logstash and Kibana) stack with kubernetes and minikube

### Pre-requisite

- Docker

- VirtualBox

- Minikube or existing kubernetes cluster on AWS, GCE etc.

### How to Run

- Execute `elk_up.sh` script from shell

    This will deploy and start following services:
    - Elastic Search 
    - Logstash
    - Kibana

### Test (on Minkube local cluster)

- Run `minikube dashboard` and view logs from all the components

- Run `minikube service kibana`, this will open kibana dashboard in browser
	- Default username:password = elastic:changeme

- Logstash is listening for log messages on port 5000 and expecting logs in JSON format