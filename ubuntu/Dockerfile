ARG UBUNTU_TAG=20.04
FROM ubuntu:${UBUNTU_TAG}
RUN apt -y update && DEBIAN_FRONTEND=noninteractive apt -y install --no-install-recommends wget build-essential pkg-config clang libssl-dev zlib1g-dev libudev-dev libusb-1.0-0-dev bsdextrautils gcc-12 g++-12
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 11 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 11 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 12 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 12
