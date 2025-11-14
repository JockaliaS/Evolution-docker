# Evolution API v2.3.6 - Docker Setup

Configuration complète pour déployer Evolution API v2.3.6 avec Docker Compose.

## 📋 Prérequis

- Docker Desktop ou Docker Engine
- Docker Compose v1.29+ (ou `docker compose` intégré)
- 2GB RAM minimum
- Ports disponibles: 8080 (API), 5432 (PostgreSQL), 6379 (Redis)

## 🚀 Installation Rapide

### 1. Configuration

```bash
# Copier le fichier d'exemple
cp .env.example .env

# Éditer le fichier .env avec tes valeurs
nano .env
```

### 2. Lancer les services

```bash
# Démarrer tous les services en arrière-plan
docker compose up -d

# Vérifier que tout fonctionne
docker compose ps

# Voir les logs de l'API
docker compose logs -f api
```

### 3. Accès à l'API

```
API: http://localhost:8080
PostgreSQL: localhost:5432
Redis: localhost:6379
```

## 📝 Variables d'environnement importantes

| Variable | Description | Valeur |
|----------|-------------|--------|
| `AUTHENTICATION_API_KEY` | Clé API pour l'authentification | À définir |
| `PASSWORD` | Mot de passe PostgreSQL | À définir |
| `SERVER_URL` | URL publique de l'API | À personnaliser |
| `CACHE_REDIS_ENABLED` | Activer Redis | true |
| `DATABASE_ENABLED` | Activer PostgreSQL | true |

## 🛠️ Commandes utiles

```bash
# Voir le statut des services
docker compose ps

# Voir les logs
docker compose logs api
docker compose logs postgres
docker compose logs redis

# Arrêter tous les services
docker compose down

# Redémarrer un service
docker compose restart api

# Accéder à PostgreSQL
docker compose exec postgres psql -U user -d evolution

# Accéder à Redis
docker compose exec redis redis-cli

# Sauvegarder les données PostgreSQL
docker compose exec postgres pg_dump -U user evolution > backup.sql

# Restaurer les données PostgreSQL
docker compose exec -T postgres psql -U user evolution < backup.sql
```

## 📊 Volumes (Données persistantes)

- `evolution_store` - Stockage des fichiers
- `evolution_instances` - Instances WhatsApp
- `evolution_pgdata` - Base de données PostgreSQL
- `evolution_redis` - Cache Redis

## 🔧 Configuration Avancée

Pour des configurations supplémentaires (S3, Kafka, RabbitMQ, etc.), voir la documentation officielle:
https://doc.evolution-api.com

## ⚠️ Notes importantes

- Change la clé `AUTHENTICATION_API_KEY` pour la sécurité
- La première démarrage peut prendre 1-2 minutes
- Redis et PostgreSQL sont activés par défaut (recommandé)
- Tous les logs sont en anglais

## 🐛 Dépannage

### Evolution API ne démarre pas
```bash
# Vérifier les logs
docker compose logs api

# Vérifier que PostgreSQL est prêt
docker compose logs postgres

# Redémarrer tous les services
docker compose restart
```

### PostgreSQL ne se connecte pas
```bash
# Vérifier que PostgreSQL démarre correctement
docker compose logs postgres

# Vérifier la connexion
docker compose exec postgres pg_isready -U user
```

### Redis ne répond pas
```bash
# Vérifier la connexion Redis
docker compose exec redis redis-cli ping

# Redémarrer Redis
docker compose restart redis
```

## 📚 Documentation

- Evolution API: https://doc.evolution-api.com
- Docker: https://docs.docker.com
- PostgreSQL: https://www.postgresql.org/docs/
- Redis: https://redis.io/documentation