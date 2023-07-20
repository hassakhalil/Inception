build:
	docker-compose -f ./srcs/docker-compose.yml build

run:
	docker-compose -f ./srcs/docker-compose.yml up

clean :
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker-compose -f ./srcs/docker-compose.yml down -v
	docker system prune -af
	rm -rf /home/hkhalil/data/db/*
	rm -rf /home/hkhalil/data/wp/*

re: fclean build run