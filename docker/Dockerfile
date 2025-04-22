FROM ubuntu:24.04

RUN dpkg --add-architecture i386
RUN apt update && apt upgrade -y

RUN apt install -y gcc-multilib gcc-mingw-w64 libasound2-dev bluez libpulse-dev libdbus-1-dev libfontconfig-dev libfreetype-dev libgnutls28-dev libgl-dev libunwind-dev libx11-dev libxcomposite-dev libxcursor-dev libxfixes-dev libxi-dev libxrandr-dev libxrender-dev libxext-dev libwayland-bin libwayland-dev libegl-dev libwayland-dev libxkbcommon-dev libxkbregistry-dev libgstreamer1.0-dev libosmesa6-dev libsdl2-dev libudev-dev libvulkan-dev libgl1-mesa-dev
RUN apt install -y libwayland-dev:i386 libxkbcommon-dev:i386 libxkbregistry-dev:i386 libfreetype-dev:i386 libx11-dev:i386  libvulkan-dev:i386 libxi-dev:i386 libgl1-mesa-dev:i386 # 32 bit required
RUN apt install -y libasound2:i386 pipewire-alsa:i386 libpulse0:i386 gstreamer1.0-plugins-good:i386
RUN apt install -y flex bison build-essential

COPY docker/build_wow64.sh /bin/
WORKDIR /app/wine
RUN mkdir /app/wine_build
RUN chmod -R 777 /app/wine_build

ENTRYPOINT ["/bin/bash", "build_wow64.sh"]
