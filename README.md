A docker container to run [certified](https://github.com/rcrowley/certified)

Mount the folder with the ssl certificates to /certified/ssl   
certified maintains a git repo for all the certificates. The git user and git email are set via GIT_USER and GIT_EMAIL environment variables.

# Example
The following example will run certified and print out the help menu.

```
docker run --rm -it --name certified \
  -v $(pwd)/certs:/certified/etc \
  -e GIT_USER=me \
  -e GIT_EMAIL=me@example.com \
  certified certified -h
```

Folow the documentations at https://github.com/rcrowley/certified for all other commands.
