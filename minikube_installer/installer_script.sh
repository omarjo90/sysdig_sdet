#! /bin/sh

file="minikube-linux-amd64"
url="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"

if [ ! -f "$file" ]
then
curl -LO ${url}
sudo install minikube-linux-amd64 /usr/local/bin/minikube
else
echo "minikube-linux-amd64 already downloaded"
sudo install minikube-linux-amd64 /usr/local/bin/minikube
fi

minikube start

kubectl apply -f nginx.yaml

python3 -m venv venv

source venv/bin/activate

pip install -r requirements.txt

python kubernetes_logs.py

deactivate

rm -rf venv/


