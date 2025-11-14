# Evolution API v2.3.6 - Zeabur Deployment

## 🚀 Quick Start

1. **Add Environment Variables in Zeabur Dashboard:**

```
AUTHENTICATION_API_KEY=O27MN9l3eDivVmCgTedbxXCpKMJgq8x3dRnr1bTYX3g=
PASSWORD=F1zqI48K72Epd56hT93neluvVti0ALMo
EVENT_EMITTER_MAX_LISTENERS=50
CONFIG_SESSION_PHONE_VERSION=2.3000.1026080446
SERVER_TYPE=http
CONFIG_SESSION_PHONE_CLIENT=Evolution API
DEL_INSTANCE=false
DATABASE_SAVE_DATA_CONTACTS=true
LANGUAGE=en
DATABASE_CONNECTION_CLIENT_NAME=evolution_exchange
DATABASE_SAVE_DATA_INSTANCE=true
QRCODE_LIMIT=30
CACHE_REDIS_ENABLED=false
CORS_ORIGIN=*
DATABASE_SAVE_MESSAGE_UPDATE=true
DATABASE_SAVE_DATA_NEW_MESSAGE=true
DATABASE_PROVIDER=sqlite
DATABASE_CONNECTION_URI=file:./data/database.db
SERVER_PORT=8080
LOG_COLOR=true
CONFIG_SESSION_PHONE_NAME=Chrome
DATABASE_SAVE_DATA_CHATS=true
LOG_BAILEYS=error
LOG_LEVEL=ERROR,WARN,DEBUG,INFO,LOG,VERBOSE,DARK,WEBHOOKS,WEBSOCKET
QRCODE_COLOR=#175197
```

2. **Deploy on Zeabur:**
   - Go to https://dashboard.zeabur.com
   - Create new project
   - Connect GitHub: JockaliaS/Evolution-docker
   - Add all environment variables above
   - Deploy

3. **Access Your API:**
   ```
   https://evolution-api-xxx.zeabur.app
   ```

## 📌 Key Files

- `Dockerfile` - Docker image configuration
- `zbpack.json` - Zeabur build configuration
- `README.md` - This documentation

## ✨ Features

- Evolution API v2.3.6 with WhatsApp integration
- SQLite database (no external DB needed)
- Auto-deploy on GitHub push
- Production-ready configuration

## 🔗 Links

- API Docs: https://doc.evolution-api.com
- Zeabur: https://zeabur.com