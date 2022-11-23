FROM ubuntu:22.04

# Install basic dependencies and clear all post-installation temporary files.
RUN apt-get update -y && \
    apt-get install -y \
        build-essential \
        cmake \
        file \
        libpthread-stubs0-dev \
        libgl1-mesa-dev \
        libx11-dev \
        libxrandr-dev \
        libfreetype6-dev \
        libglew-dev \
        libjpeg8-dev \
        libsndfile1-dev \
        libopenal-dev \
        libudev-dev \
        libxcb-image0-dev \
        libjpeg-dev \
        libflac-dev \
        xvfb && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
