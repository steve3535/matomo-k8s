#> Start with DB
##>> cm and secrets
kubectl apply -f manifests/db/0-db-matomo-envs.yaml
kubectl apply -f manifests/db/0-db-matomo-secrets.yaml
##>> storage 
kubectl apply -f manifests/db/1-db-matomo-pvc.yaml
sleep 2
##>> deployment
kubectl apply -f manifests/db/1-db-matomo.yaml
sleep 2
##>> service

#> Backend 
##>> storage
kubectl apply -f manifests/backend/2-php-pvc.yaml
sleep 2
##>> deployment
kubectl apply -f manifests/backend/2-php-pvc.yaml
sleep 2
##>> service

#> Frontend
##>> cm 
kubectl apply -f manifests/frontend/0-nginx-cm.yaml
##>> deployment
kubectl apply -f manifests/frontend/1-nginx-deploy.yaml
sleep 2
##>> service
kubectl apply -f manifests/frontend/2-nginx-service.yaml

#> Ingress
kubectl apply -f manifests/ingress/matomo.yaml


