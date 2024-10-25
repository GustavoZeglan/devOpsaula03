#!/bin/bash

pkill -f "main.py"

# Diretório do backend em Python
DIR="./devops-aula3"

rm -rf $DIR

git clone https://github.com/GabNasci/devops-aula3.git

# Iniciar o Backend (Flask) e Frontend
echo "Iniciando o backend Flask..."
cd $DIR

rm -rf devops

firefox index.html &

python3 -m venv devops

# Ativar o ambiente virtual
source devops/bin/activate

pip install flask

pip install flask-cors

# Rodar a aplicação Flask
python3 main.py --host=0.0.0.0 &

echo "Backend e Frontend estão rodando."

