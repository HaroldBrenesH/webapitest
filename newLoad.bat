rem  el ip debe ser el del host de kubernetes
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://192.168.0.29:30000/cpuinfo; done"