#! /bin/sh

# variables for the script
file="minikube-linux-amd64"
url="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"

# This validates of the file to be downloaded is already there or not, then install minikube
if [ ! -f "$file" ]
then
curl -LO ${url}
sudo install minikube-linux-amd64 /usr/local/bin/minikube
else
echo "minikube-linux-amd64 already downloaded"
sudo install minikube-linux-amd64 /usr/local/bin/minikube
fi

# minikube starts in order to execute the python script to grab logs
minikube start

# deploy of nginx to minikube
kubectl apply -f nginx.yaml

# virtualenv creation for the python script execution
python3 -m venv venv

# activating the virtualenv
source venv/bin/activate

# installing the required packages to execute the script and obtain results
pip install -r requirements.txt

# execution of the script to gran logs
python kubernetes_logs.py

# get out of the virtualenv
deactivate

#removing the unnecessary venv files
rm -rf venv/


