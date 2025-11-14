FROM evoapicloud/evolution-api:v2.3.6

EXPOSE 8080

ENV SERVER_TYPE=http
ENV SERVER_PORT=8080
ENV LANGUAGE=en

HEALTHCHECK --interval=30s --timeout=10s --retries=3 --start-period=40s \
  CMD curl -f http://localhost:8080/ || exit 1