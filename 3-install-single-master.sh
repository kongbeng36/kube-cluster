#!/bin/bash

kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/canal/rbac.yaml
kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/canal/canal.yaml
export KUBECONFIG=/etc/kubernetes/admin.conf
echo 'SUCCESS !!!'
kubectl get node -o wide

kubeadm join 192.151.212.37:6443 --token 1en3vc.k2fwuopchn1l3te7 --discovery-token-ca-cert-hash sha256:7a7fb8540dd97b10d57f5dad561534687fd4e350cb3d8ff78225ac6cd7f15819