#!/bin/bash

echo "======================================="
echo "Evolution API v2.3.6 - Health Check"
echo "======================================="
echo ""

# Couleurs
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Fonction de vérification
check_service() {
    local name=$1
    local port=$2
    local command=$3
    
    echo -n "Vérification $name... "
    
    if $command &>/dev/null; then
        echo -e "${GREEN}✓ OK${NC}"
        return 0
    else
        echo -e "${RED}✗ ERREUR${NC}"
        return 1
    fi
}

# Vérifications
check_service "Docker" "" "docker --version"
check_service "Docker Compose" "" "docker compose --version"
check_service "API (port 8080)" "8080" "curl -s http://localhost:8080/ > /dev/null"
check_service "PostgreSQL (port 5432)" "5432" "docker compose exec postgres pg_isready -U user"
check_service "Redis (port 6379)" "6379" "docker compose exec redis redis-cli ping"

echo ""
echo "Status des conteneurs:"
docker compose ps

echo ""
echo "Logs récents:"
docker compose logs --tail=10 api | tail -5