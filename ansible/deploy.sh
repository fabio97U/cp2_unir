# /bin/bahs

ansible-playbook -i hosts.azure playbook-users.yml
ansible-playbook -i hosts.azure playbook-install-k8s.yaml
ansible-playbook -i hosts.azure playbook-master.yml
ansible-playbook -i hosts.azure playbook-join-workers.yml

# ansible-playbook -i host.azure -l master 02-playbook.yaml