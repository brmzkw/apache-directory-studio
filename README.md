This repository packages apache-directory-studio with Docker, so you don't have to install an old JRE on your machine.

Run `make` to launch the container, and connect to `localhost:5901` with your VNC client. Password is `root`.

To use the docker image instead, run the following commands:

```
$> docker volume create --name apache-directory-studio
$> docker run --rm -ti -v apache-directory-studio:/root/.ApacheDirectoryStudio -p '127.0.0.1:5901:5901' brmzkw/apache-directory-studio
```
