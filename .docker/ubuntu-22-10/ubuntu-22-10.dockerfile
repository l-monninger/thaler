FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# Update
RUN apt update
RUN apt-get update

# General
RUN apt install git -y
RUN apt install apt-transport-https curl gnupg -y
RUN apt install software-properties-common -y

# C
RUN apt install build-essential -y
RUN apt-get install gdb -y

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Python3.11
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update
RUN apt install python3.11 -y
RUN apt install python3.11-dev -y
RUN apt install python3.11-venv -y
RUN apt install python3.11-distutils -y

# Java
RUN apt install openjdk-11-jdk -y

# Go
RUN apt install golang-go -y

# Bazel
RUN go install github.com/bazelbuild/bazelisk@latest
RUN export PATH=$PATH:$(go env GOPATH)/bin
RUN bazelisk

# Protobuf
RUN apt install -y protobuf-compiler libprotobuf-dev -y

# Redis
RUN apt install redis-server -y
