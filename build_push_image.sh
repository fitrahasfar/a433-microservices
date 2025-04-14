#!/bin/bash

# Build Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Menampilkan list image yang tersedia di local
docker images

# Mengubah nama image Docker Hub
docker tag item-app:v1 fitrah4551/item-app:v1

# Login ke Docker Hub dengan menggunakan environment variable sebagai password.
echo $PASSWORD_DOCKER_HUB | docker login -u fitrah4551 --password-stdin

# Push image ke Docker Hub
docker push fitrah4551/item-app:v1
