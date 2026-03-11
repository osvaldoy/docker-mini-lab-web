#!/usr/bin/env bash
set -euo pipefail

echo "==> Test de santé"
curl --fail http://localhost:5000/health

echo
echo "==> Test de l'endpoint principal"
curl --fail http://localhost:5000/

echo
echo "Smoke tests réussis."
