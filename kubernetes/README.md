# Local Kubernetes Architecture

[Architecture Diagram](https://drive.google.com/file/d/13MATsXfdtFtYtJgCDDuD3aejGKxF3nYs/view?usp=sharing)

## Apply the manifest files

Create the namespace \
`k apply -f kubernetes/00_namespace.yaml`

Apply the secrets \
`k apply -f kubernetes/01_secrets.yaml`

Create the Mongo DB deployment, service and related PV and PVC \
`k apply -f kubernetes/02_mongodb.yaml`

Create the deployments and services for server and client \
`k apply -f kubernetes/03_manifest.yaml`

Create the ingress as below:

## NGINX Ingress Controller

### Installation

https://kubernetes.github.io/ingress-nginx/deploy/#quick-start

`kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.7.0/deploy/static/provider/cloud/deploy.yaml`

### Create and Apply the ingress file

`k apply -f 04_nginx_ingress.yaml`
