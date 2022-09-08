.DEFAULT_GOAL := run

DUCK_DB_VERSION=v0.5.0
IMAGE_NAME := davidgasquez/duckdb:$(DUCK_DB_VERSION)

build:
	@docker build --build-arg DUCK_DB_VERSION=$(DUCK_DB_VERSION) -t $(IMAGE_NAME) .

run:
	@docker run --rm -it $(IMAGE_NAME) duckdb

push:
	docker push $(IMAGE_NAME)