```
# https://velog.io/@dry8r3ad/Kubernetes-Cluster-Installation

sudo swapoff -a

sudo apt install ntp
sudo service ntp restart
sudo ntpq -p

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

```
