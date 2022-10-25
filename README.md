## Senior Software Developer in Test position @Sysdig

Little repo that contains the sysdyg technical interview code

- Possible improvements if more time was available

1. It will be nice to add the script to a CI/CD tool and check logs
2. From CI/CD, explain how to set up and execute it
3. Add a possible list of libraries to try for the challenge.
4. Scope if it is required use libraries or shell commands to obtain results
5. Use python and send shell commands is also something interesting to try.
6. Add to the code exceptions to return meaningful error messages
7. Add a scope about the environment set up. If this needs to be automated as well as part of the challenge.   
8. Explain with more details what would be a good script or a bad script
   1. is it needed to received params?
   2. is it needed to comment the methods created?
   3. if params are needed, is ok to be hardcode, or it required to obtain the log names from the shell or terminal

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


- Minikube set up 
  - Pre-requisites
    - Docker should be installed and running
    - venv python package installed
    - kubectl installed
    - pip3 installed
    - installer_script tested on:
      - NAME="Linux Mint"
      - VERSION="21 (Vanessa)"
      - ID=linuxmint
      - ID_LIKE="ubuntu debian"
      - PRETTY_NAME="Linux Mint 21"


- Make sure that file 'nginx.yaml' is located in the same path as 'installer_script.sh'    
- Execute the file 'installer_script.sh' as follows:
> source installer_script.sh

- Description of the processes executed in installer_script.sh

>1. First the script downloads minikube for linux
>2. Then the file downloaded is installed
>3. Then minikube service is started
>4. After that, nginx pod is deployed to minikube
>5. One python virtual environment is created and activated to isolate where the script is going to be executed
>6. Required python packages are installed
>7. Finally, the terminal asks for log name and namespace of the log that will be displayed
>8. Results are displayed



- This is the expected output of the script:
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













