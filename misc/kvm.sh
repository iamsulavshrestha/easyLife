apt update
egrep -c '(vmx|svm)' /proc/cpuinfo
apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils -y
adduser `id -un` libvirtd
apt-get install virt-manager -y


