FROM ubuntu:24.04

RUN dpkg --add-architecture i386
RUN apt update && apt upgrade -y

# 64 bit
RUN apt install -y gcc-multilib gcc-mingw-w64 libasound2-dev libpulse-dev libdbus-1-dev libfreetype-dev libgnutls28-dev libgl-dev libunwind-dev libx11-dev libxcomposite-dev libxcursor-dev libxfixes-dev libxi-dev libxrandr-dev libxrender-dev libxext-dev libwayland-bin libwayland-dev libegl-dev libwayland-dev libxkbcommon-dev libxkbregistry-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libosmesa6-dev libsdl2-dev libudev-dev libvulkan-dev 

# 32 bit
RUN apt install -y gcc-multilib:i386 libasound2-dev:i386 libpulse-dev:i386 libdbus-1-dev:i386 libfreetype-dev:i386 libgnutls28-dev:i386 libgl-dev:i386 libunwind-dev:i386 libx11-dev:i386 libxcomposite-dev:i386 libxcursor-dev:i386 libxfixes-dev:i386 libxi-dev:i386 libxrandr-dev:i386 libxrender-dev:i386 libxext-dev:i386 libwayland-bin:i386 libwayland-dev:i386 libegl-dev:i386 libwayland-dev:i386 libxkbcommon-dev:i386 libxkbregistry-dev:i386 libgstreamer1.0-dev:i386  libosmesa6-dev:i386 libsdl2-dev:i386 libudev-dev:i386 libvulkan-dev:i386

# Undocumented
RUN apt install -y flex bison make 


COPY docker/build_wow64.sh /bin/
WORKDIR /app/wine
RUN mkdir /app/wine_build
RUN chmod -R 777 /app/wine_build

ENTRYPOINT ["/bin/bash", "build_wow64.sh"]
