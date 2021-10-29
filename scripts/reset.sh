sudo rm -rf /home/alganoun/data
sudo docker-compose down
sudo docker rm  $(docker ps -a -q -f)
sudo docker volume rm $(docker volume ls -q)
sudo docker system prune --volumes -fa
sudo docker system prune -fa
