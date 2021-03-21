rem kubectl -n testing scale --replicas=5 deployment/webapitest-dp
kubectl -n testing scale deployment/webapitest-dp --replicas=%1