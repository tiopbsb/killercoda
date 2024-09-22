#!/bin/bash

# Resposta esperada (exatamente)
# Digite os comandos que trazem as saídas desejadas e coloque-as aqui
saidas_corretas=(
$(cat <<EOF
-rw-rw-r-- 1 marcos   engenharia  11K Nov 29  2023 /files/modelo1.docx
-rw-rw-r-- 1 anderson engenharia 4.4K Mar 14  2024 /files/modelo3.docx
-rw-rw-r-- 1 ezequiel engenharia 2.9K Dec 11  2023 /files/modelo2.docx
EOF
)
#$(cat <<EOF
# se houver outra saída aceitável, colocar aqui
#)
)

# Converte as saídas corretas para uma única linha e remove espaços extras
respostas_certas=()
for item in "${saida_correta[@]}"; do
  respostas_certas+=("$(echo "$item" | tr '\n' ' ' | sed 's/  */ /g; s/^ //; s/ $//')")
done

# Preservo a última resposta do aluno
cat /tmp/last_output > /tmp/resposta

# Inicializa a variável para verificar se há correspondência
resultado=1  # Assume falha

# Compara a saída do aluno com cada uma das respostas corretas
for expected_output in "${respostas_certas[@]}"; do
  if [[ "$actual_output" == "$expected_output" ]]; then
    resultado=0  # Sucesso
    break
  fi
done

# Retorna o resultado
exit $resultado
