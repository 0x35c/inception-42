all:
	mkdir -p /home/ulayus/data/wordpress
	mkdir -p /home/ulayus/data/mariadb
	docker-compose -f srcs/docker-compose.yml up --build -d

stop:
	docker-compose -f srcs/docker-compose.yml stop

clean:
	docker system prune -af
	sudo rm -rf /home/ulayus/data/*

up:
	docker compose up -d

down:
	docker compose down -v

.PHONY: all clean up down
