build:
	docker-compose -f ./srcs/docker-compose.yml build

run:
	docker-compose -f ./srcs/docker-compose.yml up

clean :
	docker-compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	docker system prune -af
	rm -rf /home/hkhalil/data/db/*
	rm -rf /home/hkhalil/data/wp/*

re: fclean build run