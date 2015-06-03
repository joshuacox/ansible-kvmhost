# ansible-kvmhost
Playbook to prepare a baremetal machine to host KVM Virtual Hosts

## usage

add these lines to `/etc/ansible/hosts` or wherever you keep your inventory similar to:
```
[kvmhost]
kvmhost ansible_ssh_port=$PORT ansible_ssh_host=$IP_ADDRESS ansible_ssh_user=root

```
then you can call the playbooks directly like so
```
ansible-playbook kvmhost.yml
```
