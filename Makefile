all: help

clean:
	clear
	cd srcs && ./../scripts/reset.sh


re:
	make fclean
	make run
run:
	@cd srcs ; mkdir data ; cd data ; mkdir dbdata wpdata
	@chmod 777 srcs/data/dbdata srcs/data/wpdata
	@cd srcs ; docker-compose up -d

build:
	@cd srcs ; docker-compose up -d
