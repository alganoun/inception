all: run build

run:
	@sudo echo "127.0.0.1 alganoun.42.fr" | cat - /etc/hosts > tmp && sudo mv tmp /etc/hosts
	@sudo mkdir -p /home/alganoun/data/wpdata ; sudo mkdir -p /home/alganoun/data/dbdata
	@sudo chmod 777 /home/alganoun/data/dbdata /home/alganoun/data/wpdata

build:
	@cd srcs ; sudo docker-compose up -d

clean:
	@clear
	@sudo rm -rf /home/alganoun/data
	@cd srcs
	sudo docker-compose down
	sudo docker rm  $(docker ps -a -q -f)
	sudo docker volume rm $(docker volume ls -q)
	sudo docker system prune --volumes -fa
	sudo docker system prune -fa
	@cd ..

fclean : clean
	@sudo rm -rf /home/alganoun
	@sed -i "s/127.0.0.1 alganoun.42.fr//" /etc/hosts

re:
	make fclean
	make run
