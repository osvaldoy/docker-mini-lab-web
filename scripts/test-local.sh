#!/usr/bin/env bash
set -euo pipefail

echo "==> Construction et démarrage de l'environnement local"
docker compose up --build -d

echo "==> Attente du démarrage de l'application"
for i in {1..15}; do
  if curl -fsS http://localhost:5000/health > /dev/null; then
    echo "Application prête."
    exit 0
  fi
  sleep 2
done

echo "L'application n'a pas répondu à temps."
docker compose logs
exit 1
