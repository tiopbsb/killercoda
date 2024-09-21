#!/bin/bash

# cria os usuários com a pasta home
sudo useradd -m -s /bin/bash aluno
sudo useradd -m -s /bin/bash marcos
sudo useradd -m -s /bin/bash ezequiel
sudo useradd -m -s /bin/bash anderson

# cria um grupo 'engenharia'
sudo groupadd engenharia
sudo usermod -aG engenharia aluno
sudo usermod -aG engenharia marcos
sudo usermod -aG engenharia ezequiel
sudo usermod -aG engenharia anderson

# definir a senha para o usuário aluno
echo "aluno:senha" | sudo chpasswd

# desabilitar pedido de senha para comando sudo
echo "aluno ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/aluno

# adicionar o usuário ao grupo de 'sudo'
sudo usermod -aG sudo aluno

# ajustar as permissões
sudo chmod 0440 /etc/sudoers.d/aluno 

# cria a pasta /files
sudo mkdir /files
sudo chown aluno:engenharia /files

# loga como aluno para copiar os arquivos
sudo su - aluno << 'EOF'

# Baixa o arquivo ZIP do repositório
curl -L -o repo.zip https://github.com/tiopbsb/killercoda/archive/refs/heads/main.zip

# Extrai o arquivo ZIP
unzip repo.zip

# Copia a pasta files para a home do aluno
cp -r killercoda-main/linux_basico/cap_01/files/* ~/

cp killercoda-main/linux_basico/cap_01/files/arquivo /files/modelo1.docx
cp killercoda-main/linux_basico/cap_01/files/arquivo.txt /files/modelo2.docx
cp killercoda-main/linux_basico/cap_01/files/arquivo02 /files/modelo3.docx

sudo chown marcos:engenharia /files/modelo1.docx
sudo chown ezequiel:engenharia /files/modelo2.docx
sudo chown anderson:engenharia /files/modelo3.docx

# Remove o arquivo ZIP e a pasta extraída
rm repo.zip
rm -rf killercoda-main

# Sai do shell
exit

EOF

bem_vindo=$(cat <<EOF

data=\$(date '+%a, %d %b %y, %H:%Mp')

bold_green='\e[1;32m'
NC='\e[0m'

echo -e "\$bold_green"

echo -e "  __  .__                ___.          ___.    "
echo -e "_/  |_|__| ____ ______   \\\\_ |__   _____\\\\_ |__  "
echo -e "\\\\   __\\\\  |/  _ \\\\\\\\____  \\\\   | __ \\\\ /  ___/| __ \\\\ "
echo -e " |  | |  (  <_> )  |_> >  | \\\\_\\\\ \\\\___  \\\\ | \\\\_\\\\ \\\\"
echo -e " |__| |__|\\\\____/|   __/   |___  /____  >|___  /"
echo -e "                |__|          \\\\/     \\\\/     \\\\/ "
echo -e " "
echo -e "# Bem-vindo ao nosso curso de Linux Básico"
echo -e " "
echo -e "# \$data"
echo -e " "

echo -e "\$NC "

EOF
)

# Adicionar conteúdo ao final do .bashrc do aluno
echo "$bem_vindo" >> /home/aluno/.bashrc


# prepara login como 'aluno'
echo "sudo su - aluno" >> /root/.bashrc

exit 0