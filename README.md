# musikcube-bin

this repository contains pre-compiled binaries for various open source libraries that are required by **musikcube**

these libraries can be somewhat painful to compile from scratch on windows, so they are provided as a convience, and are included in the main repository as a submodule.

# licenses

* ffmpeg/libavcodec/libavformat/libavutil/libswresample: https://www.ffmpeg.org/legal.html
* curl: https://curl.haxx.se/docs/copyright.html
* libressl: https://github.com/libressl/libressl/blob/master/src/LICENSE
* libogg/libvoribs/libvorbisfile: https://github.com/xiph/vorbis/blob/master/README.md
* zlib: https://www.zlib.net/zlib_license.html
* lame: http://lame.sourceforge.net/license.txt
* SourceCodePro: https://github.com/adobe-fonts/source-code-pro/blob/master/LICENSE.md 
* flac: https://xiph.org/flac/license.html
* ExoPlayer: https://github.com/google/ExoPlayer/blob/release-v2/LICENSE

# build instructions

## CRT

when generating dlls/libs use the following CRTs:

* release:  `Multi-threaded (/MT)`
* debug: `Multi-threaded Debug (/MTd)`

## libressl

* `open Visual Studio Command Prompt`
* `mkdir build-vs2017`
* `cd build-vs2017`
* `cmake -DLIBRESSL_APPS=OFF -DLIBRESSL_TESTS=OFF -DENABLE_EXTRATESTS=OFF -DBUILD_SHARED_LIBS=ON -G"Visual Studio 15 2017" ..`

> generate 64-bit projects by opening the solution and going to Build > Configuration Manager > Active solution platform > New... > x64

> for 64-bit support, you may need to go into the project's settings > Linker > Command Line and remove `/machine:X86`

> you may need to define `_CRT_SUPPRESS_RESTRICT` if crypto warns about weird undefined references deep in the CRT.