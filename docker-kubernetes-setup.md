# Configuring Docker Kubernetes

# Enable kubernetes

Start docker desktop
Click through and enable kubernetes and run the cluster

Once it is enabled and running the current context should be `docker-desktop`

if it isn't set to docker-desktop run

```bash
kubectl config use-context docker-desktop
```

It is nice to have a dashboard for kubernetes, so to enable it run

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml
```

Then run a proxy so that you can see it

```bash
kubectl proxy
```

url should be `http://localhost:8001/api/v1/namespaces/kube-system/services/kubernetes-dashboard/proxy`
