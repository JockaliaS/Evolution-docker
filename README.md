# Evolution API - Zeabur Full Automatic Deployment

Complete setup for Evolution API with PostgreSQL and Redis on Zeabur.

## 🚀 One-Click Deployment

### Option 1: Deploy from Zeabur Templates
1. Go to https://zeabur.com/templates
2. Search for "Evolution API"
3. Click Deploy

### Option 2: Deploy from GitHub
1. Go to https://dashboard.zeabur.com
2. Create new project
3. Connect GitHub: JockaliaS/Evolution-docker
4. Zeabur automatically detects zeabur.yaml
5. Click Deploy

## 📋 What Gets Deployed

✅ **PostgreSQL 15** - Database (evolution)
✅ **Redis 7** - Cache server
✅ **Evolution API v2.2.3** - WhatsApp API

## 🔐 Environment Variables

All pre-configured in zeabur.yaml:

```yaml
AUTHENTICATION_API_KEY: O27MN9l3eDivVmCgTedbxXCpKMJgq8x3dRnr1bTYX3g=
DATABASE_PROVIDER: postgresql
CACHE_REDIS_ENABLED: true
DATABASE_ENABLED: true
CONFIG_SESSION_PHONE_VERSION: 2.3000.1026080446
```

## 🌐 Access

After deployment:
```
https://evolution-api-xxx.zeabur.app
```

## 📁 Files Structure

```
Evolution-docker/
├── zeabur.yaml       ← Template for Zeabur (ALL SERVICES)
├── Dockerfile        ← Evolution API image
├── zbpack.json       ← Zeabur build config
├── README.md         ← This file
└── .gitignore        ← Git exclusions
```

## ⚙️ Services Communication

- API connects to PostgreSQL: `postgresql://user:password@postgres:5432/evolution`
- API connects to Redis: `redis://redis:6379/6`
- All services on same internal network

## 📝 Database Info

- **Host**: postgres
- **Port**: 5432
- **Database**: evolution
- **User**: user
- **Password**: F1zqI48K72Epd56hT93neluvVti0ALMo

## 📚 Resources

- [Evolution API Docs](https://doc.evolution-api.com)
- [Zeabur Docs](https://zeabur.com/docs)
- [Template Schema](https://schema.zeabur.app/template.json)

## 🚨 Important Notes

- All services deploy automatically
- No manual configuration needed
- Data persists in volumes
- Auto-restart on failure
- CI/CD on GitHub push