all:
	mkdir -p /home/ulayus/data/wordpress
	mkdir -p /home/ulayus/data/mariadb
	docker compose -f srcs/docker-compose.yml up --build -d

stop:
	docker compose -f srcs/docker-compose.yml stop

down:
	docker compose -f srcs/docker-compose.yml down

clean:
	docker system prune -af
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf /home/ulayus/data/*

.PHONY: all clean up down
