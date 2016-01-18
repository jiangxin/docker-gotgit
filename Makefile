PORT=5000

build: check
	@docker run --rm -it -v $$(pwd)/gotgit:/data gotgit/gotgit

docker: check
	@docker build -t gotgit/gotgit docker/

server: check
	@docker run --rm -p $(PORT):80 -v $$(pwd)/gotgit/_build/html:/usr/share/nginx/html nginx

check:
	@if ! type docker >/dev/null 2>&1; then \
		echo >&2 "Cannot find docker, install docker first. See: http://www.docker.com"; exit 1; fi

.PHONY: build docker check
