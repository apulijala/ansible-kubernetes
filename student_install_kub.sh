#!/bin/bash -x 

# Initialiase the cluster 
sudo kubeadm init 
# Create the config file for the user. 
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

