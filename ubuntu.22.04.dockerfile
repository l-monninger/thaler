FROM ubuntu:22.10

# Update
RUN apt update
RUN apt-get update

# General
RUN apt install apt-transport-https curl gnupg
RUN apt install software-properties-common -y

# C
RUN apt install build-essentials
RUN apt-get -y install gdb

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Python3.10
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update
RUN apt install python3.10 -y
RUN apt install python3.10-dev -y
RUN apt install python3.10-venv -y
RUN apt install python3.10-distutils -y

# Java
RUN apt install openjdk-11-jdk

# Go
RUN apt install golang-go

# Bazel
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
RUN mv bazel-archive-keyring.gpg /usr/share/keyrings
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
RUN apt update && sudo apt install bazel

# Protobuf
RUN apt install -y protobuf-compiler libprotobuf-dev

# Redis
RUN apt install redis-server
