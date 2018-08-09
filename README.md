## Background

Work in progress attempt to install key components of a production cluster (such as ingress controller, grafana and prometheus) from a script.

## Running

./create.sh

## Notes

### Viewing / Saving Values file before install

helm inspect values stable/nginx-ingress > ./ingress-nginx/values.example.yaml

helm install --values ./ingress-nginx/values.yaml stable/nginx-ingress

https://github.com/helm/helm/blob/master/docs/using_helm.md
https://akomljen.com/get-kubernetes-cluster-metrics-with-prometheus-in-5-minutes/






