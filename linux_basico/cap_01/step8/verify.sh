#!/bin/bash

# Resposta esperada (exatamente)
saida_correta=$(cat <<EOF
-rw-rw-r-- 1 marcos   engenharia  11K Nov 29  2023 /files/modelo1.docx
-rw-rw-r-- 1 anderson engenharia 4.4K Mar 14  2024 /files/modelo3.docx
-rw-rw-r-- 1 ezequiel engenharia 2.9K Dec 11  2023 /files/modelo2.docx
EOF
)

# linha única sem espaços excessivos
expected_output=$(echo "$saida_correta" | tr '\n' ' ' | sed 's/  */ /g; s/^ //; s/ $//')
echo "$expected_output" > /tmp/expected_output

# Preservo a última resposta do aluno
cat /tmp/last_output > /tmp/resposta

# Captura a saída do comando digitado pelo aluno (única linha e sem espaços excessivos)
actual_output=$(cat /tmp/resposta | tr '\n' ' ' | sed 's/  */ /g; s/^ //; s/ $//')
echo "$actual_output" > /tmp/actual_output

# Verifica se a saída do comando corresponde à saída esperada
if [[ "$actual_output" == "$expected_output" ]]; then
  exit 0  # sucesso
else
  exit 1  # falha
fi