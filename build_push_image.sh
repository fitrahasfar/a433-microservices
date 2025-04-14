#!/bin/bash

# Build Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Menampilkan list image yang tersedia di local
docker images

# Mengubah nama image Docker Hub
docker tag item-app:v1 ghcr.io/fitrahasfar/a433-microservices/item-app:v1

# Login ke Docker Hub dengan menggunakan environment variable sebagai password.
echo $GITHUB_TOKEN | docker login ghcr.io -u fitrahasfar --password-stdin

# Push image ke Docker Hub
docker push ghcr.io/fitrahasfar/a433-microservices/item-app:v1
