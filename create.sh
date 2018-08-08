# Must have helm installed on system https://docs.helm.sh/using_helm/#installing-helm
# (Windows) choco install kubernetes-helm
# (Linux) sudo snap install helm
helm init;
kubectl rollout status -w deployment/tiller-deploy --namespace=kube-system; 

## Ingress
helm install stable/nginx-ingress --name ingress-nginx --namespace ingress-nginx --set rbac.create=true;
kubectl rollout status -w deployment/ingress-nginx-nginx-ingress-controller --namespace ingress-nginx; 

## Monitoring
helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/
helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring
helm install coreos/kube-prometheus --name kube-prometheus --namespace monitoring
