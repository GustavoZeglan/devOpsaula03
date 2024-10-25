#!/bin/bash
python3 -m venv devops
source devops/bin/activate
pip install flask
pip install flask-cors
nohup python3 main.py --host=0.0.0.0 &
echo "Backend rodando."
