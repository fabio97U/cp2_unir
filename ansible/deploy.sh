# /bin/bahs
# ----Ansible----#
ansible-playbook -i hosts.azure 01-playbook-config-general.yaml
ansible-playbook -i hosts.azure 02-playbook-tareas-comunes-nodos.yaml
ansible-playbook -i hosts.azure 03-playbook-tareas-master.yaml

# ansible-playbook -i hosts.azure 04-A-playbook-sdn-calico.yaml
ansible-playbook -i hosts.azure 04-B1-playbook-flannel.yaml
ansible-playbook -i hosts.azure 04-B2-playbook-flannel.yaml

    # ANTES QUE NADA REINICIAR MASTER
ansible-playbook -i hosts.azure 05-desplegando-ingress.yaml
