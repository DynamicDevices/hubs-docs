from node:22 as build
workdir /var/docs
copy . .
run cd website && npm install && npm run build

from nginx:alpine
workdir /var/www/docs
copy --from=build /var/docs/website/build/hubs-docs/ .
copy scripts/docker/nginx.config /etc/nginx/conf.d/default.conf

healthcheck CMD curl -s http://localhost:8080/healthz | grep '^hubs-docs ok$'
