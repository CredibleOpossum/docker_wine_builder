FROM ubuntu:24.04

RUN dpkg --add-architecture i386
RUN apt update && apt upgrade -y
RUN apt install gcc-multilib gcc-mingw-w64 libasound2-dev libpulse-dev libdbus-1-dev libfontconfig-dev libfreetype-dev libgnutls28-dev libgl-dev libunwind-dev libx11-dev libxcomposite-dev libxcursor-dev libxfixes-dev libxi-dev libxrandr-dev libxrender-dev libxext-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libosmesa6-dev libsdl2-dev libudev-dev libvulkan-dev -y
RUN apt install flex build-essential bison libx11-dev -y # Seemingly unlisted deps.
RUN apt install libwayland-dev libxkbcommon-dev libxkbregistry-dev -y # Wayland related.
RUN apt install libwayland-dev:i386 libxkbcommon-dev:i386 libxkbregistry-dev:i386 -y # Wayland 32bit.
RUN apt install libfreetype-dev:i386 libx11-dev:i386 -y

COPY docker/build_wow64.sh /bin/
WORKDIR /app/wine
RUN mkdir /app/wine_build
RUN chmod -R 777 /app/wine_build

ENTRYPOINT ["/bin/bash", "build_wow64.sh"]
