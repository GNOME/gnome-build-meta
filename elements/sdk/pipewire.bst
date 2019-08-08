kind: filter

depends:
- filename: components/pipewire.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gst-plugins-base.bst
  type: runtime
- filename: components/alsa-lib.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/sdl2.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/ffmpeg.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/systemd-libs.bst
  junction: freedesktop-sdk.bst
  type: runtime

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libpipewire-*.so'
