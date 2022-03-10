Inicial

ssh -i C:\Users\fabio.ramos\.ssh\id_rsa_cp2 fabio.ramos@20.103.251.15

dnf install epel-release ansible git tree jq -y

dnf install python36 -y

git clone https://github.com/fabio97U/cp2_unir.git
fabio97U
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
cd cp2_unir/ansible/

ansible -i hosts.azure -m ping all