#!/bin/bash

sudo useradd -m -s /bin/bash aluno

echo "aluno:aluno" | sudo chpasswd

sudo usermod -aG sudo aluno

sudo chmod 0440 /etc/sudoers.d/aluno

exit 0