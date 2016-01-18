build: check
	@docker run --rm -it -v $$(pwd)/gotgit:/data gotgit/gotgit

docker: check
	@docker build -t gotgit/gotgit docker/

check:
	@if ! type docker >/dev/null 2>&1; then \
		echo >&2 "Cannot find docker, install docker first. See: http://www.docker.com"; exit 1; fi

.PHONY: build docker check
