all:
	@echo "build: build gotgit/gotgit"

build:
	@docker build -t gotgit/gotgit .

push
	@docker login
	@docker push gotgit/gotgit

.PHONY: all build run
