# Evolution API v2.3.6 - Makefile

.PHONY: help up down logs ps restart stop start clean backup restore

help:
	@echo "Evolution API v2.3.6 - Commandes disponibles:"
	@echo ""
	@echo "  make up           - Démarrer tous les services"
	@echo "  make down         - Arrêter tous les services"
	@echo "  make restart      - Redémarrer tous les services"
	@echo "  make stop         - Arrêter sans supprimer les volumes"
	@echo "  make start        - Redémarrer les services arrêtés"
	@echo "  make ps           - Voir le statut des services"
	@echo "  make logs         - Voir les logs en temps réel"
	@echo "  make logs-api     - Logs de l'API seulement"
	@echo "  make logs-db      - Logs de PostgreSQL seulement"
	@echo "  make logs-redis   - Logs de Redis seulement"
	@echo "  make clean        - Arrêter et supprimer les volumes"
	@echo "  make backup       - Sauvegarder la base de données"
	@echo "  make psql         - Accéder à PostgreSQL"
	@echo "  make redis-cli    - Accéder à Redis"
	@echo "  make shell-api    - Shell dans le conteneur API"
	@echo ""

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

stop:
	docker compose stop

start:
	docker compose start

ps:
	docker compose ps

logs:
	docker compose logs -f

logs-api:
	docker compose logs -f api

logs-db:
	docker compose logs -f postgres

logs-redis:
	docker compose logs -f redis

clean:
	docker compose down -v

backup:
	docker compose exec postgres pg_dump -U user evolution > backup_$$(date +%Y%m%d_%H%M%S).sql

psql:
	docker compose exec postgres psql -U user -d evolution

redis-cli:
	docker compose exec redis redis-cli

shell-api:
	docker compose exec api /bin/bash

pull:
	docker compose pull

test-api:
	curl -X GET http://localhost:8080/