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
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: base/opus.bst
  junction: freedesktop-sdk.bst
- filename: base/sndfile.bst
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
    -Ddc1394=disabled
    -Ddirectfb=disabled
    -Ddts=disabled
    -Dfaac=disabled
    -Dfaad=disabled
    -Dflite=disabled
    -Dfluidsynth=disabled
    -Dgme=disabled
    -Dgsm=disabled
    -Diqa=disabled
    -Dkate=disabled
    -Dladspa=disabled
    -Dlibde265=disabled
    -Dlibmms=disabled
    -Dlv2=disabled
    -Dmodplug=disabled
    -Dmpeg2enc=disabled
    -Dmplex=disabled
    -Dmsdk=disabled
    -Dmusepack=disabled
    -Dneon=disabled
    -Dnvdec=disabled
    -Dnvenc=disabled
    -Dofa=disabled
    -Dopencv=disabled
    -Dopenexr=disabled
    -Dopenh264=disabled
    -Dopenjpeg=disabled
    -Dopenmpt=disabled
    -Dopenni2=disabled
    -Dopensles=disabled
    -Dresindvd=disabled
    -Drtmp=disabled
    -Dsbc=disabled
    -Dsctp=disabled
    -Dsoundtouch=disabled
    -Dspandsp=disabled
    -Dsrt=disabled
    -Dsrtp=disabled
    -Dteletext=disabled
    -Dtinyalsa=disabled
    -Duvch264=disabled
    -Dvdpau=disabled
    -Dvoaacenc=disabled
    -Dvoamrwbenc=disabled
    -Dwasapi=disabled
    -Dwebrtc=disabled
    -Dwebrtcdsp=disabled
    -Dwildmidi=disabled
    -Dwpe=disabled
    -Dx265=disabled
    -Dzbar=disabled
