# Integration with grabler.me-hub

This document explains how to integrate the Felix personal website into the grabler.me-hub ecosystem.

## Quick Integration Steps

1. **Add Felix service to main docker-compose.yml**

   Add this service definition to `/home/felix/F3/grabler.me-hub/docker-compose.yml`:

   ```yaml
   felix:
     build: ./Felix
     container_name: felix-personal-website
     restart: unless-stopped
     networks:
       - grabler-network
     labels:
       - "traefik.enable=true"
       - "traefik.http.routers.felix.rule=Host(`felix.grabler.me`)"
       - "traefik.http.routers.felix.entrypoints=websecure"
       - "traefik.http.routers.felix.tls.certresolver=myresolver"
   ```

2. **Update proxy configuration**

   If using nginx proxy, add this location block to the main nginx configuration:

   ```nginx
   location /felix {
       proxy_pass http://felix-personal-website:80;
       proxy_set_header Host $host;
       proxy_set_header X-Real-IP $remote_addr;
       proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
       proxy_set_header X-Forwarded-Proto $scheme;
   }
   ```

3. **Copy the Felix directory**

   Ensure the Felix directory is properly placed in the grabler.me-hub structure:

   ```
   grabler.me-hub/
   ├── Felix/          # This directory
   ├── Namo/
   ├── distributor/
   └── docker-compose.yml
   ```

## Environment-specific Setup

### Development

```bash
# In grabler.me-hub directory
docker-compose -f docker-compose.dev.yml up felix
```

### Production

```bash
# In grabler.me-hub directory
docker-compose up felix -d
```

## DNS Configuration

For production deployment, ensure DNS records point to your server:

- `felix.grabler.me` → Your server IP
- Or configure as subdirectory: `grabler.me/felix`

## SSL/TLS

If using Let's Encrypt with Traefik or similar, the certificates should be automatically handled based on the labels in the docker-compose configuration.

## Monitoring

The Felix website will be accessible at:

- Development: `http://localhost:3001`
- Production: `https://felix.grabler.me` (with proper DNS setup)

## Customization for Hub Integration

The website is already configured to work within the hub ecosystem:

- Uses port 80 internally (mapped externally)
- Includes proper nginx configuration
- Ready for reverse proxy setup
- Minimal resource requirements
