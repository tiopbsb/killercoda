#!/bin/bash

#!/bin/bash

# Obtém o último comando do histórico
last_command=$(history | tail -n 2 | head -n 1 | awk '{$1=""; print $0}')

# Remove espaços extras
last_command=$(echo "$last_command" | sed 's/^ *//;s/ *$//')

# Verifica se o último comando foi 'ls -l /files' ou 'ls /files -l'
if [[ "$last_command" == "ls -l /files" || "$last_command" == "ls /files -l" ]]; then
  echo "done"
else
  echo "O comando executado não foi 'ls -l /files' ou 'ls /files -l'."
  exit 1
fi
