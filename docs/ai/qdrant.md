`qdrant-config`
```yaml
log_level: INFO

service:
  # Reduce max request size to prevent memory issues
  max_request_size_mb: 16
  max_workers: 1

cluster:
  enabled: false

# Disable telemetry
telemetry_disabled: true
```

`docker-compose`
```yaml
services:
  qdrant:
    image: qdrant/qdrant:latest
    ports:
      - "6333:6333"
      - "6334:6334"
      - ./qdrant_config.yaml:/qdrant/config/production.yaml
    user: root
    command: ["./qdrant", "--config-path", "config/production.yaml"]
```