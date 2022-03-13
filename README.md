# Resolución caso práctico 2 UNIR EU Devops y Cloud

El siguiente documento describe como realiza el despliegue con Terraform y Ansible

### Clonar repositorio
```console
> git clone https://github.com/fabio97U/cp2_unir.git
> cd cp2_unir
```

## Configuracion con Terraform
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

![](imgs/Diagram-terraform.svg)

## Configuracion con Ansible

En nodo master
dnf install epel-release -y
dnf install ansible git tree jq -y
ansible-galaxy collection install ansible.posix
ansible-galaxy collection install community.general

En nodo cliente
dnf install python36 -y

cd /home/adminUsername/
git clone https://github.com/fabio97U/cp2_unir.git
fabio97U
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
chmod 777 cp2_unir/ansible/deploy.sh
cd cp2_unir/ansible/
ansible -i hosts.azure -m ping all
./deploy.sh

Borrar repositorio
cd /home/adminUsername/
rm -rf /home/adminUsername/cp2_unir