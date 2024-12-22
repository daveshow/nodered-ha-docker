# nodered-ha-docker

Docker image for Node-RED with Home Assistant support

## Usage

```
docker run -d -p 1880:1880 -e "TZ=America/New_York" -v /data:/data --name nodered-ha daveshow/nodered-ha-docker
```

## Environment Variables

- `TZ` - Set the timezone for the container

## Volumes

- `/data` - Node-RED data directory
