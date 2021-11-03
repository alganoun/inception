all: run build

run:
	@mkdir -p ./srcs/data/wpdata ; mkdir -p ./srcs/data/dbdata
	@chmod 777 ./srcs/data/dbdata ./srcs/data/wpdata

build:
	@cd srcs ; docker-compose up -d

clean:
	@clear
	@cd srcs && docker-compose down && \
	docker volume rm srcs_dbdata && \
	docker volume rm srcs_wpdata && \
	docker system prune --volumes -fa && \
	docker system prune -fa

fclean: clean
	@rm -rf ./srcs/data

re: fclean all