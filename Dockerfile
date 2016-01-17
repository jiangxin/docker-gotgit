FROM gotgit/sphinx-doc:latest

MAINTAINER Jiang Xin worldhello.net@gmail.com

ADD build.sh /build.sh
WORKDIR /data
VOLUME ["/data"]
ENTRYPOINT ["/build.sh"]
CMD ["html"]
