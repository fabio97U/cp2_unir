# /bin/bahs

ansible-playbook -i hosts.azure playbook-inicial.yaml
ansible-playbook -i hosts.azure playbook-users.yaml # OK
ansible-playbook -i hosts.azure playbook-install-k8s.yaml
ansible-playbook -i hosts.azure playbook-master.yaml
ansible-playbook -i hosts.azure playbook-join-workers.yaml

ansible-playbook -i hosts.practica playbook_practica.yaml

# ansible-playbook -i host.azure -l master 02-playbook.yaml