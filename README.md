# Sirko docker

This repository contains a Dockerfile which takes care of building a docker image in order to launch
the [Sirko engine](https://github.com/dnesteryuk/sirko-engine) through [Docker]. Besides that,
it provides an easy way to launch the built image and all dependencies for the engine.

## Requirements

 - at least 1 Gb of free RAM
 - installed [Docker]
 - installed [Docker compose](https://docs.docker.com/compose/install)

[Docker]: https://www.docker.com/products/overview

## Usage

1. Clone the repo.

    ```
    $ git clone https://github.com/dnesteryuk/sirko-docker.git ./
    ```

2. Create a `.env` file.

    ```
    SIRKO_CLIENT_URL=http://localhost:3000
    ```

3. Launch the engine and its dependencies.

    ```
    $ sudo docker-compose up -d
    ```

4. Verify what happens to the engine.

    ```
    $ sudo docker-compose logs sirko
    ```

  If you see a message like this:

      Expecting requests from http://localhost:3000

  the engine is running and it is ready to accept requests.

## Updating the engine

Currently, the image grabs the code from [the master branch](https://github.com/dnesteryuk/sirko-engine/tree/master).
To pick new changes introduced to the engine, execute:

```
$ sudo docker-compose build --no-cache
$ sudo docker-compose up -d
```

The same steps you have to make after changing the `.env` file. Unfortunately, it is only the way to introduce new settings to the engine.
