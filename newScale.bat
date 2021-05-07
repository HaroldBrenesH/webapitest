rem kubectl -n testing scale --replicas=5 deployment/webapitest-dp
kubectl scale deployment/webapitest-dp --replicas=%1