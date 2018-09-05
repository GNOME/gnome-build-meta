kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/release/SDL2-2.0.8.tar.gz
- kind: patch
  path: files/sdl2/sdl2-unity-fix.patch
depends:
- sdk/fcitx.bst
- sdk/ibus.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: |
    --enable-sdl-dlopen \
    --disable-arts \
    --disable-esd \
    --disable-nas \
    --enable-pulseaudio \
    --disable-alsa \
    --disable-oss \
    --disable-sndio \
    --disable-libudev \
    --enable-video-wayland \
    --enable-wayland-shared=no
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{bindir}/sdl2-config"
          - "%{libdir}/libSDL2.so"

