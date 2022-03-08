## Setup env

`cp .env.dist .env`

## Build alertmanager

`cd alertmanager && docker build -t local/alertmanager .`

## Configure Caddy

edit `./caddy/Caddyfile`
