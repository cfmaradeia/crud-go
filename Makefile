run:
	go run main.go

build:
	go build -o bin/main main.go

infra/up:
	docker-compose up -d

infra/down:
	docker-compose stop

database/update:
	 docker-compose run --rm -e MIGRATION_COMMAND=update crud-go-migration

database/rollback:
	 docker-compose run --rm -e MIGRATION_COMMAND=rollback crud-go-migration