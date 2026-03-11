.PHONY: help up down logs rebuild test smoke clean

help:
	@echo "Commandes disponibles:"
	@echo "make up        - démarrer l'environnement"
	@echo "make rebuild   - reconstruire les images"
	@echo "make logs      - afficher les logs"
	@echo "make test      - test complet"
	@echo "make smoke     - smoke test"
	@echo "make clean     - supprimer containers et volumes"

up:
	docker compose up -d

rebuild:
	docker compose up --build -d

logs:
	docker compose logs -f

down:
	docker compose down

test:
	bash scripts/test-local.sh

smoke:
	bash scripts/smoke-test.sh

clean:
	docker compose down -v
