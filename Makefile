.PHONY: setup build up down ps logs exec test

setup:
	@make up
	@make ps
down:
	docker compose down
build:
	docker compose build
up:
	docker compose up -d
ps:
	docker compose ps
logs:
	docker compose logs -f demo-app
exec:
	docker compose exec demo-app bash
test:
	docker compose run --entrypoint "poetry run pytest --asyncio-mode=auto" demo-app

