from kubernetes import client, config


# This method allows to connect and retrieve the logs for an specific POD
# in order to obtain logs execute as follows:
# python .\kubernetes_logs.py
# By default, this method uses log_name='nginx', namespace='default'
# but it also can be executed like this:
# kubernetes_logs('etcd-minikube', 'kube-system,')
# at the end, this script generates a file with the name of the pod, i.e:
# {log_name}_file.txt and the output will be saved in a file as well
def kubernetes_logs(log_name='nginx', namespace='default'):
    config.load_kube_config()
    v1 = client.CoreV1Api()
    print(f'Logs for POD: pod/{log_name} \n{v1.read_namespaced_pod_log(log_name, namespace)}\n')
    with open(f'{log_name}_file.txt', 'a') as o:
        o.write(f'Logs for POD: pod/{log_name} \n{v1.read_namespaced_pod_log(log_name, namespace)}\n')


# This method return the list of available pods and its IP, namespace and name
def list_pods_with_ips():
    config.load_kube_config()
    v1 = client.CoreV1Api()
    print("Listing pods with their IPs:")
    pod = v1.list_pod_for_all_namespaces(watch=False)
    for i in pod.items:
        print(f'ip: {i.status.pod_ip}, namespace: {i.metadata.namespace}, name: {i.metadata.name}')


if __name__ == "__main__":
    log_name = 'etcd-minikube'
    namespace = 'kube-system'
    kubernetes_logs()
    kubernetes_logs(log_name, namespace)
    list_pods_with_ips()
