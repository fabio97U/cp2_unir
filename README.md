# Resolución caso práctico 2 UNIR EU Devops y Cloud

El siguiente documento describe como realiza el despliegue con Terraform y Ansible

### Clonar repositorio
```console
> git clone https://github.com/fabio97U/cp2_unir.git
> cd cp2_unir
```

## Configuración con Terraform
Version de terraform y provider utilizada
- Terraform v1.1.7
- azurerm 2.99.0

### Para levantar la infraestructura en azure correr el comando
- Remplazar los archivos correccion-vars.tf y credentials.tf con los personales con el acceso al provider

```console
> cd terraform
> terraform init
> terraform plan
> terraform apply
```
Diagrama de la infraestructura que levantara terraform

![](imgs/Diagram-terraform.png)

## Configuración con Ansible

Configuraciónes previas a lanzar el ./deploy.sh
Conectarse por ssh a las ips publicas con el usuario "ssh_user" y "public_key_path" configurado en el archivo de terraform "correccion-vars.tf", es necesario configurar las direcciones IPS públicas en los siguientes archivos

- ansible/hosts.azure
- ansible/group_vars/all.yaml
- ansible/roles/crear-nfs/templates/exports.j2

En el nodo master
```console
[adminUsername@vm-master ~]$ sudo su
[root@vm-master adminUsername]# dnf install epel-release -y
[root@vm-master adminUsername]# dnf install ansible git tree jq -y
[root@vm-master adminUsername]# ansible-galaxy collection install ansible.posix
[root@vm-master adminUsername]# ansible-galaxy collection install community.general
```

En los nodos sobre los cuales Ansible realizara Configuraciónes
```console
> dnf install python36 -y
```
En el master copiar y pegar los pares de clave generados  en 
- /home/adminUsername/.ssh/

Clonando el repositorio
```console
> cd /home/adminUsername/
> git clone https://github.com/fabio97U/cp2_unir.git
> chmod 777 cp2_unir/ansible/deploy.sh
> cd cp2_unir/ansible/
> ansible -i hosts.azure -m ping all
> ./deploy.sh
> curl http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/
```

Validar el despliegue de la simple aplicación
```console
> curl localhost:8001/api/v1/namespaces/kubernetes-dashboard/services
```

Diagrama de la aplicación a levantar ansible es el siguiente:
![](imgs/Diagram-ansible.png)


#### Link demostración
En el siguiente video se muestra todo el proceso de despliegue descrito en los pasos anteriores
[Demostración](https://www.youtube.com/watch?v=VjlOrf4L76g)


#### Borrar repositorio
```console
> cd /home/adminUsername/
> rm -rf /home/adminUsername/cp2_unir
```

#### Destruir infraestructura
```console
> cd terraform
> terraform destroy
```
