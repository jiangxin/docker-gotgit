all:
	@echo "build: Download gotgit e-book (if not exist) and compile it"

build:
	@docker run --rm -it -v $$(pwd)/gotgit:/data gotgit/gotgit

docker:
	@docker build -t gotgit/gotgit docker/

.PHONY: all build docker
