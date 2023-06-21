all:
	mkdir -p /home/ulayus/data/wordpress
	mkdir -p /home/ulayus/data/mariadb
	docker-compose -f srcs/docker-compose.yml up --build -d

stop:
	docker-compose -f srcs/docker-compose.yml stop

down:
	docker-compose -f srcs/docker-compose.yml down

clean:
	docker system prune -af
	sudo rm -rf /home/ulayus/data/*

.PHONY: all clean up down
