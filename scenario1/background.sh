#!/bin/bash

# cria o usuário aluno com a pasta home
sudo useradd -m -s /bin/bash aluno

# definir a senha para o usuário aluno
echo "aluno:senha" | sudo chpasswd

# desabilitar pedido de senha para comando sudo
echo "aluno ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/aluno

# adicionar o usuário ao grupo de 'sudo'
sudo usermod -aG sudo aluno

echo "teste 1"

# ajustar as permissões
sudo chmod 0440 /etc/sudoers.d/aluno

echo "teste 2"

# faz login como 'aluno'
sudo su - aluno

echo "teste 3"

exit 0