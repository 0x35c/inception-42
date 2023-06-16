all:
	mkdir -p /home/ulayus/data
	docker-compose build
	docker-compose up -d

clean:
	docker system prune -af
	rm -rf /home/ulayus/data/*

up:
	docker-compose up -d

down:
	docker-compose down -v

.PHONY: all clean up down
