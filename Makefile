all: run build

run:
	@sudo echo "127.0.0.1 alganoun.42.fr" | cat - /etc/hosts > tmp && sudo mv /etc/hosts /etc/tmp2 && sudo mv tmp /etc/hosts
	@sudo mkdir -p /home/alganoun/data/wpdata ; sudo mkdir -p /home/alganoun/data/dbdata
	@sudo chmod 777 /home/alganoun/data/dbdata /home/alganoun/data/wpdata

build:
	@cd srcs ; sudo docker-compose up -d

clean:
	@clear
	@sudo rm -rf /home/alganoun/data
	@cd srcs && sudo docker-compose down && \
	sudo docker volume rm srcs_dbdata && \
	sudo docker volume rm srcs_wpdata && \
	sudo docker system prune --volumes -fa && \
	sudo docker system prune -fa

fclean: clean
	@sudo rm -rf /home/alganoun
	@sudo rm /etc/hosts && sudo mv /etc/tmp2 /etc/hosts

re: fclean all