FROM ubuntu:24.04

RUN dpkg --add-architecture i386
RUN apt update && apt upgrade -y

RUN apt install wget gnupg -y

# Required
RUN apt install gcc-multilib gcc-mingw-w64 libasound2-dev bluez libpulse-dev libdbus-1-dev libfontconfig-dev libfreetype-dev libgnutls28-dev libgl-dev libunwind-dev libx11-dev libxcomposite-dev libxcursor-dev libxfixes-dev libxi-dev libxrandr-dev libxrender-dev libxext-dev libwayland-bin libwayland-dev libegl-dev libwayland-dev libxkbcommon-dev libxkbregistry-dev -y

# Unlisted
RUN apt install flex bison gettext libpcsclite-dev mingw-w64 g++-mingw-w64 gcc-mingw-w64 -y
RUN apt install libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavdevice-dev libavfilter-dev -y 

# Optional
RUN apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libsdl2-dev libudev-dev libvulkan-dev -y

# Rare
RUN apt install libcapi20-dev libcups2-dev libgphoto2-dev libsane-dev libkrb5-dev samba-dev ocl-icd-opencl-dev libpcap-dev libusb-1.0-0-dev libv4l-dev -y

# 32bit
RUN apt install libasound2-dev:i386 bluez:i386 libdbus-1-dev:i386 libfontconfig-dev:i386 libfreetype-dev:i386 libgnutls28-dev:i386 libgl-dev:i386 libunwind-dev:i386 libx11-dev:i386 libxcomposite-dev:i386 libxcursor-dev:i386 libxfixes-dev:i386 libxi-dev:i386 libxrandr-dev:i386 libxrender-dev:i386 libxext-dev:i386 libwayland-bin:i386 libwayland-dev:i386 libegl-dev:i386 libwayland-dev:i386 libxkbcommon-dev:i386 libxkbregistry-dev:i386 -y
RUN apt install libgnutls28-dev:i386 -y
RUN apt install libvulkan-dev:i386 libvulkan1:i386 -y 

COPY docker/build_wow64.sh /bin/
WORKDIR /app/wine_build
RUN chmod -R 777 /app/wine_build

ENTRYPOINT ["/bin/bash", "build_wow64.sh"]
