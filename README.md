## Senior Software Developer in Test position @Sysdig

Little repo that contains the sysdyg technical interview code

- Minikube - Windows set up 

>This link demonstrates how to set up minekube https://minikube.sigs.k8s.io/docs/start, follow the
instructions until step 4, put attention in step 2 in case that minikube does not start correctly.

- Create a .yaml file with the following values:

```
apiVersion: v1
kind: Pod
metadata:
  name: nginx
  namespace:
  labels:
    run: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80
```

- After deploying the yaml file, execute the following command in order to deploy a POD 
> kubectl apply -f .\your_file.yaml

- The following output should be displayed:
> pod/nginx created

- Create one virtualenv in order to have all the required packages 
> python -m venv venv

- Activate the venv
> .\venv\Scripts\activate

- Install the required packages using requirements.txt file
> pip install -r requirements.txt

- Execute the script in order to obtain the logs
> python kubernetes_logs.py


- This is the expected output if the script:
```
Logs for POD: pod/nginx
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2022/10/17 21:06:23 [notice] 1#1: using the "epoll" event method
2022/10/17 21:06:23 [notice] 1#1: nginx/1.23.1
2022/10/17 21:06:23 [notice] 1#1: built by gcc 10.2.1 20210110 (Debian 10.2.1-6)
2022/10/17 21:06:23 [notice] 1#1: OS: Linux 4.19.128-microsoft-standard
2022/10/17 21:06:23 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2022/10/17 21:06:23 [notice] 1#1: start worker processes
2022/10/17 21:06:23 [notice] 1#1: start worker process 31
2022/10/17 21:06:23 [notice] 1#1: start worker process 32
2022/10/17 21:06:23 [notice] 1#1: start worker process 33
2022/10/17 21:06:23 [notice] 1#1: start worker process 34
2022/10/17 21:06:23 [notice] 1#1: start worker process 35
2022/10/17 21:06:23 [notice] 1#1: start worker process 36
2022/10/17 21:06:23 [notice] 1#1: start worker process 37
2022/10/17 21:06:23 [notice] 1#1: start worker process 38
2022/10/17 21:06:23 [notice] 1#1: start worker process 39
2022/10/17 21:06:23 [notice] 1#1: start worker process 40
2022/10/17 21:06:23 [notice] 1#1: start worker process 41
2022/10/17 21:06:23 [notice] 1#1: start worker process 42


Listing pods with their IPs:
ip: 172.17.0.3, namespace: default, name: nginx
ip: 172.17.0.2, namespace: kube-system, name: coredns-565d847f94-cnvh6
ip: 192.168.49.2, namespace: kube-system, name: etcd-minikube
ip: 192.168.49.2, namespace: kube-system, name: kube-apiserver-minikube
ip: 192.168.49.2, namespace: kube-system, name: kube-controller-manager-minikube
ip: 192.168.49.2, namespace: kube-system, name: kube-proxy-m2ddt
ip: 192.168.49.2, namespace: kube-system, name: kube-scheduler-minikube
ip: 192.168.49.2, namespace: kube-system, name: storage-provisioner
```

- Finally, a file called {pod_name}_file.txt is created in the folder where the script is executed













