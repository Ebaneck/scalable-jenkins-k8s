Setup Jenkins with Helm3

Install traefik

helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm install stable/traefik --values helm-setup-with-traefik/traefik-values.yml 

Install Jenkins

kubectl create namespace jenkins

Add Jenkins PV, PVC, SA

kubectl apply -f jenkins-sa.yaml
kubectl apply -f jenkins-pvc.yaml
kubectl apply -f jenkins-pv.yaml


helm repo add jenkinsci https://charts.jenkins.io
helm repo update
helm install jenkins -n jenkins -f helm-setup-with-traefik/jenkins-values.yml jenkinsci/jenkins


Add example application helm charts

helm create example_solution

See extra ordinary notes here: https://hands-on-tech.github.io/2020/03/15/k8s-jenkins-example.html