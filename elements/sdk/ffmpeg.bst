kind: manual
sources:
- kind: git
  url: https://git.ffmpeg.org/ffmpeg.git
  track: n4.0.2
depends:
- sdk/sdl2.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base/nasm.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  ffmpeg-prefix: "%{prefix}"
  ffmpeg-libdir: "%{libdir}"
  ffmpeg-arch: "%{arch}"
  (?):
  - arch == "i686":
        ffmpeg-arch: x86

  conf-local: |
    --prefix="%{ffmpeg-prefix}" \
    --libdir="%{ffmpeg-libdir}" \
    --disable-debug \
    --disable-doc \
    --disable-static \
    --enable-optimizations \
    --enable-shared \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-everything \
    --enable-gnutls \
    --enable-libfdk-aac \
    --enable-libmp3lame \
    --enable-libfontconfig \
    --enable-libfreetype \
    --enable-libopus \
    --enable-libpulse \
    --enable-libspeex \
    --enable-libtheora \
    --enable-libvorbis \
    --enable-libvpx \
    --enable-libwebp \
    --enable-openal \
    --enable-opengl \
    --enable-sdl2 \
    --enable-encoder=ac3,mp2,libmp3lame,libfdk_aac \
    --enable-decoder=pcm_s16be,pcm_s24be,pcm_mulaw,pcm_alaw \
    --enable-decoder=pcm_u8,pcm_s16le,pcm_s24le,pcm_f32le \
    --enable-decoder=theora,vorbis,vp8,vp9,mp2,mp3,flac,webp,ac3,libfdk_aac \
    --enable-decoder=rawvideo,png,gif \
    --enable-parser=opus,vp3,vorbis,vp8,mpegaudio,flac,aac,ac3 \
    --enable-demuxer=ogg,matroska,wav,mp3,gif,flac,aac,ac3,m4a \
    --enable-filter=crop,scale \
    --enable-protocol=file \
    --arch="%{ffmpeg-arch}"
# ffmpeg is not using autotools, but a configure and Makefile files
config:
  configure-commands:
  - ./configure %{conf-local}
  build-commands:
  - make
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/libavdevice.so"
        - "%{libdir}/libavcodec.so"
        - "%{libdir}/libswscale.so"
        - "%{libdir}/libpostproc.so"
        - "%{libdir}/libavutil.so"
        - "%{libdir}/libavfilter.so"
        - "%{libdir}/libavformat.so"
        - "%{libdir}/libswresample.so"
