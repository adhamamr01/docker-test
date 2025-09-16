# docker-test

A simple repository demonstrating how to use **Dockerfiles** to containerize applications.

## 📖 Overview
This project is intended as a learning resource for Docker beginners.  
It provides examples of creating and running containers using a `Dockerfile`.

You’ll learn how to:
- Write a basic Dockerfile
- Build an image from a Dockerfile
- Run containers from that image
- Expose ports and pass environment variables
- Use Docker commands to interact with containers

## 🚀 Getting Started

### Prerequisites
- Install Docker on your system: https://docs.docker.com/get-docker/

### Build the Image
docker build -t docker-test .

### Run a Container
docker run --rm -p 8080:8080 docker-test

--rm removes the container once it stops  
-p 8080:8080 maps container port 8080 to host port 8080  

Adjust ports as needed depending on your app.

## 🔧 Customization
You can modify the Dockerfile to:
- Use a different base image
- Copy and run your own source code
- Expose other ports
- Add environment variables

Example Dockerfile:
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./src /app
RUN javac Main.java
CMD ["java", "Main"]

## 📚 Useful Docker Commands
List images:
docker images

List containers:
docker ps -a

Stop a container:
docker stop <container_id>

Remove an image:
docker rmi docker-test

## 📝 License
This repository is for educational purposes and thanks to the efforts of boot.dev's amazing website.
You are free to use and modify it.
