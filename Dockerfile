FROM ubuntu:22.04

# Install basic dependencies and clear all post-installation temporary files.
RUN apt-get update -y && \
    apt-get install -y \
        build-essential \
        cmake \
        file \
        libflac-dev \
        libfreetype6-dev \
        libgl1-mesa-dev \
        libglew-dev \
        libjpeg-dev \
        libjpeg8-dev \
        libopenal-dev \
        libpthread-stubs0-dev \
        libsdl2-dev \
        libsndfile1-dev \
        libudev-dev \
        libx11-dev \
        libxcb-image0-dev \
        libxcursor-dev \
        libxrandr-dev \
        xvfb && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
