# neolink-pi-docker
Docker file to create image able to run neolink from a Raspberry Pi 3. This has been tested
with 

# Info about Neolink
See [Neolink](https://github.com/thirtythreeforty/neolink).

# Usage
1. Install docker and optionally docker-compose on your raspberry pi.
1. Rename/copy neolink.toml.sample to neolink.toml and update configuration required for your deployment.
1. Build the Docker image
```bash
docker build -t neolink:latest .
```
1. You can directly use docker to run the image or docker-compose
```bash
docker-compose up -d
```
