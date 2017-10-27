---
layout: post
title: Armos メモ
comments: true
tags: armos D
---

ああ、markdownをやめてorg-modeでブログを書きたい...。

## ubuntu 16.04 で インストール

### libcurl のインストール

``` console
sudo apt install libcurl4-gnutls-dev
```
### GLFWが古くてエラーが出る

``` console
wget https://github.com/glfw/glfw/releases/download/3.2.1/glfw-3.2.1.zip
unzip glfw-3.2.1.zip
cd glfw-3.2.1
mkdir build
cd build
cmake .. -DBUILD_SHARED_LIBS=ON
make -j4
sudo make install  # /usr/local/ 以下がデフォルト
```

### glslfy がないとエラー

example/camera などで発生

``` console
wget https://nodejs.org/dist/v6.11.4/node-v6.11.4-linux-x64.tar.xz
tar -xvf node-v6.11.4-linux-x64.tar.xz
export PATH=`pwd`/node-v6.11.4-linux-x64/bin:$PATH
npm install -g glslfy
```

### liborbisenc がないエラー

example/audio などで必要

``` console
sudo apt install libvorbis-dev
```

example/gui

# TODO: これだめ
sudo apt install libfreeimage-dev


wget https://jaist.dl.sourceforge.net/project/freeimage/Source%20Distribution/3.17.0/FreeImage3170.zip
unzip FreeImage3170.zip
cd FreeImage
make CC="gcc -std=c99" -j4  # -std=c11 cannot compile R"..." in macros
sudo make install INSTALLDIR=/usr/local


### libassimp

wget https://github.com/assimp/assimp/archive/v3.3.1.tar.gz
tar -xvf v3.3.1
cd assimp-3.3.1
cmake CMakeLists.txt -G 'Unix Makefiles'
make -j4
sudo make INCDIR=/usr/local/include INSTALLDIR=/usr/local/lib install


### libportmidi

sudo apt install libportmidi-dev

