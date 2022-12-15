.DEFAULT_GOAL := run

DUCK_DB_VERSION=v0.6.1
IMAGE_NAME := davidgasquez/duckdb:$(DUCK_DB_VERSION)
LATEST_IMAGE_NAME := davidgasquez/duckdb:latest

build:
	@docker build --build-arg DUCK_DB_VERSION=$(DUCK_DB_VERSION) -t $(IMAGE_NAME) -t $(LATEST_IMAGE_NAME) .

run:
	@docker run --rm -it $(IMAGE_NAME) duckdb

push: build
	docker push $(IMAGE_NAME)
	docker push $(LATEST_IMAGE_NAME)
