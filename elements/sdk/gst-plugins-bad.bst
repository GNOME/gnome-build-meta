kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
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
