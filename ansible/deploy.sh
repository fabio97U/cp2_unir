# /bin/bahs
# ----Ansible----#
ansible-playbook -i hosts.azure 01-playbook-config-general.yaml
ansible-playbook -i hosts.azure 02-playbook-tareas-comunes-nodos.yaml
ansible-playbook -i hosts.azure 03-playbook-tareas-master.yaml
# > kubeadm join 10.0.1.10:6443 --token n23rrv.r4xu86rjjxjzv1ub --discovery-token-ca-cert-hash sha256:ab96091b44fee3c9d748c3e1351a59491aac6024a9050bc6d414677bbbb19f61 

# ansible-playbook -i hosts.azure 04-A-playbook-sdn-calico.yaml
ansible-playbook -i hosts.azure 04-B1-playbook-flannel.yaml
ansible-playbook -i hosts.azure 04-B2-playbook-flannel.yaml
# > kubectl get pods -A -o wide

    # # ANTES QUE NADA REINICIAR MASTER
ansible-playbook -i hosts.azure 05-desplegando-ingress.yaml
# > kubectl get namespaces
# > kubectl get pods --namespace=haproxy-controller
# > kubectl get svc -A

ansible-playbook -i hosts.azure 06-uniendo-workers.yaml
# > kubectl get nodes

ansible-playbook -i hosts.azure 07-desplegando-aplicacion.yaml
# Desplegando aplicacion
# > kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml
# > kubectl proxy
# > curl localhost:8001/api/v1/namespaces/kubernetes-dashboard/services

ansible-playbook -i hosts.azure 08-creacion-usuario-no-admin.yaml
