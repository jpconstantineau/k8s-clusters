
export SERVER_IPM1=192.168.50.51
export SERVER_IPM2=192.168.50.52
export SERVER_IPM3=192.168.50.53

export SERVER_IPW1=192.168.50.54
export SERVER_IPW2=192.168.50.55
export SERVER_IPW3=192.168.50.56
export SERVER_IPW4=192.168.50.57
export SSHKEY=~/.ssh/local-pi-id_ed25519

export USER=pi

k3sup install  --ip $SERVER_IPM1 --user $USER --cluster  --ssh-key $SSHKEY
k3sup join     --ip $SERVER_IPM2 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --server  --ssh-key $SSHKEY
k3sup join     --ip $SERVER_IPM3 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --server  --ssh-key $SSHKEY

k3sup join     --ip $SERVER_IPW1 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --ssh-key $SSHKEY
k3sup join     --ip $SERVER_IPW2 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --ssh-key $SSHKEY
k3sup join     --ip $SERVER_IPW3 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --ssh-key $SSHKEY
k3sup join     --ip $SERVER_IPW4 --user $USER --server-user $USER --server-ip $SERVER_IPM1 --ssh-key $SSHKEY

export KUBECONFIG=`pwd`/kubeconfig
kubectl get node -o wide

echo cgroup, you may need to add "cgroup_memory=1 cgroup_enable=memory" to your linux cmdline (/boot/cmdline.txt on a Raspberry Pi)cd pi
echo sudo nano /boot/cmdline.txt 