1) terraform apply --var-file=kubernetes.tfvars

2) get the ip address and configure the ssh config file. 
Host kub_master_student
  HostName 3.9.114.92
  Port 22
  User student
  StrictHostKeyChecking no
  ForwardX11 yes
  IdentityFile /home/arvind/learnkub/id_rsa
     
Host kub_worker_1
  HostName 18.133.182.187
  Port 22
  User centos
  StrictHostKeyChecking no
  ForwardX11 yes
  IdentityFile /home/arvind/practical-networking/practicalnetworking.pem
     
 
Host kub_worker_2
  HostName 18.170.36.9
  Port 22
  User centos
  StrictHostKeyChecking no
  IdentityFile /home/arvind/practical-networking/practicalnetworking.pem
  ForwardX11 yes

3) configure inventory . 

4) scp install_kub.sh kub_worker_1:/tmp/

5) Install /tmp/install_kub.sh on all nodes (master as well as worker nodes)
