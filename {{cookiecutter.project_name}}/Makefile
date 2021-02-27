.PHONY: init init-migration build run db-migrate test pre-commit 

init:  build run
	docker-compose exec web flask db upgrade
	docker-compose exec web flask {{cookiecutter.app_name}} init
	@echo "Init done, containers running"

build:
	docker-compose build

run:
	docker-compose up -d

db-migrate:
	docker-compose exec web flask db migrate

db-upgrade:
	docker-compose exec web flask db upgrade

test:
	docker-compose run -v $(PWD)/tests:/code/tests:ro black

pre-commit:
	docker-compose exec pre-commit

lint:
	docker-compose run black
