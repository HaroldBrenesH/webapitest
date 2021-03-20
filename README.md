

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


1- newNameSpace
2- newReplicationController
3- newService
4- newLoadBalancer



# si se borra el servicio se borra el loadbalancer
 curl http://localhost:30000/weatherforecast/
kubectl get all

1- newDeployment
2- newService 
# este le da la salida por un puerto a todo el NLB



# sacar un pod de un deploy para debugging
kubectl label pod microservicio:cuarentena --overrides
