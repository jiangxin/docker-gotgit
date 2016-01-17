# Dockerfile for gotgit/gotgit

This is dockerfile for Docker Hub image [gotgit/gotgit](https://hub.docker.com/r/gotgit/gotgit/).

# Compile my e-book: GotGit

Run the following command will download source code of the book from github.com/gotgit/gotgit, and
compile it.

    $ docker run -v $(pwd)/gotgit:/data gotgit/gotgit
