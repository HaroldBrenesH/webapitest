

https://labs.play-with-docker.com/

 


docker run -d -p 80:80 -it ls -l
docker run -d -p 80:80 -rm -it ls -l
# -rm lo remueve despues de terminar

 para conectar a un container que ya se esta ejectando

docker ps

docker exec -it [DOCKERID] sh

docker exec -it [DOCKERID] /bin/bash

docker exec -it [DOCKERID] ls -l

https://docs.microsoft.com/en-us/visualstudio/containers/container-build?view=vs-2019


# volumenes

linux
docker run -dp 80:80 -v ~/git/codigo/ruta:/usr/share/nginx/html/


windows net app
docker run -dp 80:80 -v ./git/codigo/ruta:/app/


# logs
docker log <id>


#CI/CD
docker override


# kubernetes

kubectl get nodes -o wide

kubectl [-n  NAMESPACE]
kubectl -n testing - get services
                         remotecontrollers
                         namespaces


1- newMetrics
2- DeployServiceHpa


# si se borra el servicio se borra el loadbalancer
 curl http://localhost:30000/weatherforecast/
kubectl get all


# sacar un pod de un deploy para debugging
kubectl label pod microservicio:cuarentena --overrides


## Administrar recursos

kubectl get nodes 
kubectl describe node docker-desktop
Cada cpu equivala a 1000m (milicores)
analizar el porcentaje a asignar


# how to get info
    kubectl label nodes 

    kubectl get pods -L tier=frontend
    kubectl logs pods - app=webapitest