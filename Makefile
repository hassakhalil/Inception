build:
	sudo docker compose -f ./srcs/docker-compose.yml build

run:
	sudo docker compose -f ./srcs/docker-compose.yml up

volume:
	sudo mkdir -p /home/hkhalil/data/db/
	sudo mkdir -p /home/hkhalil/data/wp/

clean :
	sudo docker compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker compose -f ./srcs/docker-compose.yml down -v
	sudo docker system prune -af
	sudo rm -rf /home/hkhalil/data/db/*
	sudo rm -rf /home/hkhalil/data/wp/*

re: fclean build run