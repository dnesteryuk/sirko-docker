# Sirko docker

This repository keeps:

- a Dockerfile for building a docker image for the [Sirko Engine](https://github.com/dnesteryuk/sirko-engine)
- an example of a docker-compose.yml file to launch the Sirko Engine along with Neo4j.

The documentation describing how to use the docker image can be found [here](https://github.com/sirko-io/engine#install-with-docker).

## Building a new image

1. Download the latest version of the [Sirko Engine](https://github.com/sirko-io/engine/releases):

    ```
    $ wget https://github.com/sirko-io/engine/releases/download/v0.0.1/sirko.tar.gz
    ```

2. Build an image:

    **IMPORTANT:** Don't forget to update the version in the example below.

    ```
    $ sudo docker build -t dnesteryuk/sirko:0.0.1 -t dnesteryuk/sirko:latest .
    ```

3. Push the built image to the [Docker hub](https://hub.docker.com/):

    ```
    $ sudo docker push dnesteryuk/sirko:0.0.1
    $ sudo docker push dnesteryuk/sirko:latest
    ```
