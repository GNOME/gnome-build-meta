kind: meson
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.3.tar.xz
  ref: b2224e5d9c1b85ad51233f6135524bb9e16a9172d395edc79c73b89094659fd5
depends:
- sdk/gst-plugins-base.bst
- sdk/librsvg.bst
- sdk/opus.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Daom=disabled \
    -Dassrender=disabled \
    -Dbluez=disabled \
    -Dbs2b=disabled \
    -Dchromaprint=disabled \
    -Ddirectfb=disabled \
    -Ddts=disabled \
    -Dfaac=disabled \
    -Dfaad=disabled \
    -Dfdkaac=enabled \
    -Dflite=disabled \
    -Dfluidsynth=disabled \
    -Dgsm=disabled \
    -Diqa=disabled \
    -Dkate=disabled \
    -Dladspa=disabled \
    -Dlibde265=disabled \
    -Dlibmms=disabled \
    -Dlv2=disabled \
    -Dmpeg2enc=disabled \
    -Dmplex=disabled \
    -Dmusepack=disabled \
    -Dneon=disabled \
    -Dopencv=disabled \
    -Dopenh264=disabled \
    -Dopenjpeg=disabled \
    -Dopensles=disabled \
    -Dresindvd=disabled \
    -Drtmp=disabled \
    -Dsbc=disabled \
    -Dsctp=disabled \
    -Dsoundtouch=disabled \
    -Dspandsp=disabled \
    -Dsrt=disabled \
    -Dsrtp=disabled \
    -Duvch264=disabled \
    -Dvoaacenc=disabled \
    -Dwasapi=disabled \
    -Dwebrtc=disabled \
    -Dwebrtcdsp=disabled \
    -Dx265=disabled \
    -Dzbar=disabled
