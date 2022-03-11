# /bin/bahs

ansible-playbook -i hosts.azure playbook-inicial.yaml
ansible-playbook -i hosts.azure playbook-users.yaml # OK
ansible-playbook -i hosts.azure playbook-install-k8s.yaml
ansible-playbook -i hosts.azure playbook-master.yaml
ansible-playbook -i hosts.azure playbook-join-workers.yaml

ansible-playbook -i hosts.practica playbook_practica.yaml

# ansible-playbook -i host.azure -l master 02-playbook.yaml


# ----Ansible2----#
ansible-playbook -i hosts.azure 01-playbook-config-general.yaml
ansible-playbook -i hosts.azure 02-playbook-tareas-comunes-nodos.yaml
ansible-playbook -i hosts.azure 03-playbook-tareas-master.yaml

ansible-playbook -i hosts.azure 04-A-playbook-sdn-calico.yaml
ansible-playbook -i hosts.azure 04-B-playbook-flannel.yaml

ansible-playbook -i hosts.azure 05-desplegando-ingress.yaml
