#!/bin/bash

# Setup environment
cd /workspace/refresh-db
python3.11 -m venv .venv
source .venv/bin/activate
python3.11 -m pip install --upgrade pip
python3.11 -m pip install -r .requirements

# Run the script every 48 hours
while true; do
    python3.11 app.py
    sleep 172800
done