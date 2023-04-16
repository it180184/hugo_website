

bold=$(tput bold)
normal=$(tput sgr0)

docker image tag it180184/hugo_website:1.0-SNAPSHOT ghcr.io/it180184/hugo_website:latest
docker push ghcr.io/it180184/hugo_website:latest
kubectl delete -f appsrv.yaml
kubectl delete -f busybox-job.yaml
kubectl apply -f namespace.yaml
kubectl apply -f ingress.yaml
kubectl apply -f postgres.yaml
kubectl apply -f appsrv.yaml
kubectl apply -f nginx.yaml
kubectl apply -f busybox-job.yaml


echo "----------"
echo "DO NOT FORGET: make the ${bold}docker image public${normal} on ghcr.io"
echo "----------"
