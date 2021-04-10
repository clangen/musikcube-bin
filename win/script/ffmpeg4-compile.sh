
#!/bin/sh

#
# Note: to compile you first need to install the following packages:
#
#   * 32-bit: pacman -S base-devel mingw32/mingw-w64-i686-opus mingw32/mingw-w64-i686-libvorbis
#   * 64-bit: pacman -S base-devel mingw64/mingw-w64-x86_64-opus mingw64/mingw-w64-x86_64-libvorbis
#
# Then, edit `/mingw32/lib/pkgconfig/opus.pc / vorbis.pc / vorbisenc.pc / ogg.pc` and
# update the `Libs` line from `-lopus` to `-l:libopus.a`, and do the same for vorbis
# and ogg. Also, make sure to update references to `-lspp` the same way. This will ensure
# everything gets linked statically.
#

MINGW_TYPE="mingw32"
OUT_PATH="/c/src/ffmpeg-${MINGW_TYPE}-inst"

export PKG_CONFIG_PATH="/${MINGW_TYPE}/lib/pkgconfig"
export CFLAGS=-static-libgcc
export CXXFLAGS=-static-libgcc
export LDFLAGS=-static-libgcc

./configure --disable-static \
    --env="PKG_CONFIG_PATH=/${MINGW_TYPE}/lib/pkgconfig" \
    --pkg-config-flags="--static" \
    --prefix="${OUT_PATH}" \
    --enable-shared \
    --disable-everything \
    --disable-programs \
    --disable-doc \
    --disable-debug \
    --disable-dxva2 \
    --disable-avdevice \
    --disable-avfilter \
    --disable-swscale \
    --disable-ffplay \
    --disable-network \
    --disable-muxers \
    --disable-demuxers \
    --disable-zlib \
    --disable-bzlib \
    --disable-iconv \
    --disable-bsfs \
    --disable-filters \
    --disable-parsers \
    --disable-indevs \
    --disable-outdevs \
    --disable-encoders \
    --disable-decoders \
    --disable-hwaccels \
    --disable-nvenc \
    --disable-xvmc \
    --disable-videotoolbox \
    --disable-audiotoolbox \
    --disable-filters \
    --enable-demuxer=aac \
    --enable-demuxer=ac3 \
    --enable-demuxer=aiff \
    --enable-demuxer=ape \
    --enable-demuxer=asf \
    --enable-demuxer=au \
    --enable-demuxer=avi \
    --enable-demuxer=flac \
    --enable-demuxer=flv \
    --enable-demuxer=matroska \
    --enable-demuxer=m4v \
    --enable-demuxer=mp3 \
    --enable-demuxer=mpc \
    --enable-demuxer=mpc8 \
    --enable-demuxer=ogg \
    --enable-demuxer=mov \
    --enable-demuxer=pcm_alaw \
    --enable-demuxer=pcm_mulaw \
    --enable-demuxer=pcm_f64be \
    --enable-demuxer=pcm_f64le \
    --enable-demuxer=pcm_f32be \
    --enable-demuxer=pcm_f32le \
    --enable-demuxer=pcm_s32be \
    --enable-demuxer=pcm_s32le \
    --enable-demuxer=pcm_s24be \
    --enable-demuxer=pcm_s24le \
    --enable-demuxer=pcm_s16be \
    --enable-demuxer=pcm_s16le \
    --enable-demuxer=pcm_s8 \
    --enable-demuxer=pcm_u32be \
    --enable-demuxer=pcm_u32le \
    --enable-demuxer=pcm_u24be \
    --enable-demuxer=pcm_u24le \
    --enable-demuxer=pcm_u16be \
    --enable-demuxer=pcm_u16le \
    --enable-demuxer=pcm_u8 \
    --enable-demuxer=wav \
    --enable-demuxer=wv \
    --enable-demuxer=xwma \
    --enable-demuxer=dsf \
    --enable-decoder=aac \
    --enable-decoder=aac_latm \
    --enable-decoder=ac3 \
    --enable-decoder=alac \
    --enable-decoder=als \
    --enable-decoder=ape \
    --enable-decoder=atrac1 \
    --enable-decoder=atrac3 \
    --enable-decoder=eac3 \
    --enable-decoder=flac \
    --enable-decoder=mp1 \
    --enable-decoder=mp1float \
    --enable-decoder=mp2 \
    --enable-decoder=mp2float \
    --enable-decoder=mp3 \
    --enable-decoder=mp3adu \
    --enable-decoder=mp3adufloat \
    --enable-decoder=mp3float \
    --enable-decoder=mp3on4 \
    --enable-decoder=mp3on4float \
    --enable-decoder=mpc7 \
    --enable-decoder=mpc8 \
    --enable-decoder=opus \
    --enable-decoder=vorbis \
    --enable-decoder=wavpack \
    --enable-decoder=wmalossless \
    --enable-decoder=wmapro \
    --enable-decoder=wmav1 \
    --enable-decoder=wmav2 \
    --enable-decoder=wmavoice \
    --enable-decoder=pcm_alaw \
    --enable-decoder=pcm_bluray \
    --enable-decoder=pcm_dvd \
    --enable-decoder=pcm_f32be \
    --enable-decoder=pcm_f32le \
    --enable-decoder=pcm_f64be \
    --enable-decoder=pcm_f64le \
    --enable-decoder=pcm_lxf \
    --enable-decoder=pcm_mulaw \
    --enable-decoder=pcm_s8 \
    --enable-decoder=pcm_s8_planar \
    --enable-decoder=pcm_s16be \
    --enable-decoder=pcm_s16be_planar \
    --enable-decoder=pcm_s16le \
    --enable-decoder=pcm_s16le_planar \
    --enable-decoder=pcm_s24be \
    --enable-decoder=pcm_s24daud \
    --enable-decoder=pcm_s24le \
    --enable-decoder=pcm_s24le_planar \
    --enable-decoder=pcm_s32be \
    --enable-decoder=pcm_s32le \
    --enable-decoder=pcm_s32le_planar \
    --enable-decoder=pcm_u8 \
    --enable-decoder=pcm_u16be \
    --enable-decoder=pcm_u16le \
    --enable-decoder=pcm_u24be \
    --enable-decoder=pcm_u24le \
    --enable-decoder=pcm_u32be \
    --enable-decoder=pcm_u32le \
    --enable-decoder=pcm_zork \
    --enable-decoder=dsd_lsbf \
    --enable-decoder=dsd_msbf \
    --enable-decoder=dsd_lsbf_planar \
    --enable-decoder=dsd_msbf_planar \
    --enable-parser=aac \
    --enable-parser=aac_latm \
    --enable-parser=ac3 \
    --enable-parser=cook \
    --enable-parser=dca \
    --enable-parser=flac \
    --enable-parser=mpegaudio \
    --enable-parser=opus \
    --enable-parser=vorbis \
    --enable-muxer=adts \
    --enable-muxer=flac \
    --enable-muxer=ogg \
    --enable-muxer=opus \
    --enable-muxer=webm \
    --enable-muxer=webp \
    --enable-muxer=mov \
    --enable-muxer=mp4 \
    --enable-encoder=aac \
    --enable-encoder=alac \
    --enable-encoder=flac \
    --enable-encoder=mpeg4 \
    --enable-encoder=libopus \
    --enable-encoder=libvorbis \
    --enable-encoder=wavpack \
    --enable-encoder=wmav1 \
    --enable-encoder=wmav2 \
    --enable-libopus \
    --enable-libvorbis \
    --disable-pthreads \
    --build-suffix=-musikcube || exit $?
make || exit $?

make install
strip "${OUT_PATH}/bin/*.dll"
