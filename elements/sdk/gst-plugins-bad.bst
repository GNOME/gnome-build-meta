kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
depends:
- sdk/gst-plugins-base.bst
- sdk/librsvg.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: base/opus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >
    -Daom=disabled
    -Dassrender=disabled
    -Dbluez=disabled
    -Dbs2b=disabled
    -Dchromaprint=disabled
    -Dcurl-ssh2=disabled
    -Ddirectfb=disabled
    -Ddts=disabled
    -Dfaac=disabled
    -Dfaad=disabled
    -Dflite=disabled
    -Dfluidsynth=disabled
    -Dgsm=disabled
    -Diqa=disabled
    -Dkate=disabled
    -Dladspa=disabled
    -Dlibde265=disabled
    -Dlibmms=disabled
    -Dlv2=disabled
    -Dmpeg2enc=disabled
    -Dmplex=disabled
    -Dmsdk=disabled
    -Dmusepack=disabled
    -Dneon=disabled
    -Dopencv=disabled
    -Dopenh264=disabled
    -Dopenjpeg=disabled
    -Dopensles=disabled
    -Dresindvd=disabled
    -Drtmp=disabled
    -Dsbc=disabled
    -Dsctp=disabled
    -Dsoundtouch=disabled
    -Dspandsp=disabled
    -Dsrt=disabled
    -Dsrtp=disabled
    -Duvch264=disabled
    -Dvoaacenc=disabled
    -Dwasapi=disabled
    -Dwebrtc=disabled
    -Dwebrtcdsp=disabled
    -Dx265=disabled
    -Dzbar=disabled
