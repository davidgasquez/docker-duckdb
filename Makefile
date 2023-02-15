.DEFAULT_GOAL := run

DUCKDB_VERSION=v0.7.0
IMAGE_NAME := davidgasquez/duckdb:$(DUCKDB_VERSION)
LATEST_IMAGE_NAME := davidgasquez/duckdb:latest

build:
	@docker build --build-arg DUCKDB_VERSION=$(DUCKDB_VERSION) -t $(IMAGE_NAME) -t $(LATEST_IMAGE_NAME) .

run:
	@docker run --rm -it $(IMAGE_NAME) duckdb

push: build
	docker push $(IMAGE_NAME)
	docker push $(LATEST_IMAGE_NAME)
