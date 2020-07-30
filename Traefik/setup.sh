docker network create --scope=swarm proxy
echo 'Created docker proxy network'

echo 'Running chmod on acme.json'
chmod 600 ./acme.json

echo 'Starting services...'
docker stack deploy traefik --compose-file docker-compose.yml

echo 'All services up...i think...'
