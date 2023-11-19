# Tutorial: https://makefiletutorial.com/
infra_up:
	docker compose -f docker-compose.yaml up -d
infra_down:
	docker compose -f docker-compose.yaml down
infra_start:
	docker compose -f docker-compose.yaml start
infra_stop:
	docker compose -f docker-compose.yaml stop
infra_restart:
	make infra_stop
	make infra_start
enter_mongo:
	docker exec -it mongodb /bin/bash
connect_mongo:
# mongo mongodb://localhost:27017 -u rootuser -p rootpass
	mongosh mongodb://localhost:27017 -u rootuser -p rootpass