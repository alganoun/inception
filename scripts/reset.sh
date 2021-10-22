docker-compose down
docker rm  $(docker ps -a -q -f)
docker volume rm $(docker volume ls -q)
docker system prune -fa
rm -rf data