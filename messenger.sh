#!/usr/bin/env bash
set -e

echo "[enclave] cloning Enclave-Messenger..."
git clone https://github.com/Project-Enclave/Enclave-Messenger
cd Enclave-Messenger

echo "[enclave] creating virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "[enclave] installing dependencies..."
pip install -r requirements.txt

echo "[enclave] setting up identity..."
python set.py

echo "[enclave] starting..."
python web.py
