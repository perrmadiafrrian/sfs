# SFS

A Docker container for static file serving

## Usage

### Run with `docker run`

```shell
docker run -dit -v $PWD:/app -p 3000:3000 permadiafrian/sfs:latest
```

### Run with `docker-compose`

Download the [docker-compose.yml](./docker-compose.yml)
then run it

```shell
docker-compose up -d
```
