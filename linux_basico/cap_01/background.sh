#!/bin/bash

# cria o usuário aluno com a pasta home
sudo useradd -m -s /bin/bash aluno
sudo useradd -m -s /bin/bash marcos
sudo useradd -m -s /bin/bash ezequiel
sudo useradd -m -s /bin/bash anderson

# cria um grupo 'alunos'
sudo groupadd alunos
sudo usermod -aG alunos aluno
sudo usermod -aG alunos marcos
sudo usermod -aG alunos ezequiel
sudo usermod -aG alunos anderson

# definir a senha para o usuário aluno
echo "aluno:senha" | sudo chpasswd

# desabilitar pedido de senha para comando sudo
echo "aluno ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/aluno

# adicionar o usuário ao grupo de 'sudo'
sudo usermod -aG sudo aluno

# ajustar as permissões
sudo chmod 0440 /etc/sudoers.d/aluno 

# loga como aluno para copiar a pasta com os arquivos
sudo su - aluno << 'EOF'

# Baixa o arquivo ZIP do repositório
curl -L -o repo.zip https://github.com/tiopbsb/killercoda/archive/refs/heads/main.zip

# Extrai o arquivo ZIP
unzip repo.zip

# Copia a pasta files para a home do aluno
cp -r killercoda-main/linux_basico/cap_01/files/* ~/

# Remove o arquivo ZIP e a pasta extraída
rm repo.zip
rm -rf killercoda-main

# Sai do shell
exit

EOF

# prepara login como 'aluno'
echo "sudo su - aluno" >> /root/.bashrc

exit 0