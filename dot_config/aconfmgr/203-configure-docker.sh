AddPackage docker # Pack, ship and run any application as a lightweight container
AddPackage docker-buildx # Docker CLI plugin for extended build capabilities with BuildKit
AddPackage docker-compose # Fast, isolated development environments using Docker
AddPackage docker-scan # Docker Scan is a Command Line Interface to run vulnerability detection on your Dockerfiles and Docker images

CopyFile /etc/docker/daemon.json

CreateLink /etc/systemd/system/sockets.target.wants/docker.socket /usr/lib/systemd/system/docker.socket # docker.socket starts docker on first usage
