kind: filter

build-depends:
- freedesktop-sdk.bst:components/pipewire.bst
runtime-depends:
- sdk/gst-plugins-base.bst
- sdk-deps/ffmpeg.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libdbus.bst
- freedesktop-sdk.bst:components/sdl2.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libpipewire-*.so'
