# az-struts

This is a tiny proof-of-concept [Struts 2](https://struts.apache.org/) app to trial Azure container deployments.

## Getting started

### [Install `Java`](https://www.oracle.com/technetwork/java/javase/downloads/index.html)

Java is a general-purpose, object-oriented computer-programming language in common use by Government of Canada IT teams. It is also [the world's most popular programming language](https://www.tiobe.com/tiobe-index/). 


### [Install `docker`](https://docs.docker.com/install/)

A docker container allows a developer to package up an application and all of its parts. This means we can build an app in any language, in any stack, and then run it anywhere — whether locally or on a server.

## Build and run with [Maven](https://maven.apache.org/index.html)

```bash
# create .war file
./mvnm clean install

# run application
./mvnw jetty:run
```

Your app should be running at [http://localhost:8080/az-struts/index](http://localhost:8080/az-struts/index)

On a Mac, press `Control` + `C` to quit the running application.

### Run unit tests

```bash
# run unit tests
./mvnm clean test
```

## Build and run as a Docker container

```bash
# create .war file in /target directory
./mvnm clean install

# build an image locally
docker build --build-arg ARTIFACT_ID="az-struts" -t cdssnc/az-struts .

# run the container
docker run -it -p 8080:8080 az-struts
```

Your app should be running at [http://localhost:8080/index](http://localhost:8080/index)

On a Mac, press `Control` + `C` to quit the running docker container.

### Running the docker container in Development Mode

Struts 2 has a [Development Mode](https://struts.apache.org/core-developers/development-mode.html) which will provide additional logging and debug information.

By default, dev mode is set to `false` when running the container. However, you can turn on dev mode by overriding the `STRUTS_DEV_MODE` environment variable when booting up the container.

```bash
# override STRUTS_DEV_MODE
docker run -it -e STRUTS_DEV_MODE=true -p 8080:8080 az-struts
```
