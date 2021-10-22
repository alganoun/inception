BLUE=\033[0;34m
GREEN=\033[0;32m
RED=\033[0;31m
YELLOW=\033[0;33m
NC=\033[0m
B=`tput bold`

VOL = srcs_db_vol \
      srcs_wp_vol

FC = ${GREEN}${B}Clean${NC}
NOC = ${RED}${B}No    ${NC}

all: help

clean:
	clear
	@echo "\n${BLUE}${B}Loading...${NC}\n"
	@echo "${B}._______________________________."
	@echo "${B}| Volumes | Containers | Images |"
	@echo "${B}|_________|____________|________|"
	@echo "${B}|         |            |        |"
	@echo "${B}| ${NOC}  | ${FC}      | ${FC}  |"
	@echo "${B}|         |            |        |"
	@echo "${B}|_______________________________|\n"
	@bash /home/${USER}/ft_inception/scripts/reset.sh 2>/dev/null

fclean:
	clear
	@echo "${B}._______________________________."
	@echo "${B}| Volumes | Containers | Images |"
	@echo "${B}|_________|____________|________|"
	@echo "${B}|         |            |        |"
	@echo "${B}| ${FC}   | ${FC}      | ${FC}  |"
	@echo "${B}|         |            |        |"
	@echo "${B}|_______________________________|\n"
	@echo "\n${BLUE}${B}Loading...${NC}\n"
	@bash /home/${USER}/ft_inception/scripts/reset.sh 2>/dev/null
	@docker volume prune -f 2>/dev/null
	@bash /home/${USER}/ft_inception/scripts/rm_vol.sh
	@sudo rm -rf /home/${USER}/data
	@echo "\n"

re:
	make fclean
	make run

help:
	@clear
	@echo "\n${B}DESCRIPTION\n"
	@echo "${B}\tMakefile is a program to automate docker options using short commands.\n"
	@echo "${B}1- make run:${GREEN}${B} Init all services, containers, images and volumes."
	@echo "${NC}${B}2- make build:${GREEN}${B} Build a new container with old volumes."
	@echo "${NC}${B}3- make clean:${GREEN}${B} Stops and removes the containers with their images."
	@echo "${NC}${B}4- make fclean:${GREEN}${B} Performs the same task as clean command, and now removes volumes."
	@echo "${NC}${B}5- make re:${GREEN}${B} Clean and execute all.\n"

run:
	@cd srcs ; mkdir data ; cd data ; mkdir dbdata wpdata
	@chmod 777 srcs/data/dbdata srcs/data/wpdata
	@cd srcs ; docker-compose up -d

build:
	@cd srcs ; docker-compose up -d
