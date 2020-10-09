kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fftw.bst
- freedesktop-sdk.bst:components/gdbm.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:components/orc.bst
- freedesktop-sdk.bst:components/sndfile.bst
- freedesktop-sdk.bst:components/speexdsp.bst
- freedesktop-sdk.bst:components/webrtc-audio-processing.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/bluez.bst
- freedesktop-sdk.bst:components/sbc.bst
- sdk/glib.bst
- sdk/gtk+-3.bst

variables:
  meson-local: >-
    -Dasyncns=disabled
    -Davahi=disabled
    -Dbluez5=true
    -Ddatabase=gdbm
    -Dfftw=disabled
    -Dgtk=enabled
    -Djack=disabled
    -Dlirc=disabled
    -Dsoxr=disabled
    -Dsystemd=enabled
    -Dtests=false
    -Dudev=enabled
    -Dudevrulesdir=$(pkg-config --variable=udevdir udev)/rules.d

public:
  bst:
    split-rules:
      libpulse:
      - '%{debugdir}/**'
      - '%{includedir}/**'
      - '%{libdir}/cmake/**'
      - '%{libdir}/pkgconfig/**'
      - '%{libdir}/pulseaudio/lib*.so*'
      - '%{libdir}/lib*.so*'
      - '%{bindir}/pacat'
      - '%{bindir}/pacmd'
      - '%{bindir}/pactl'
      - '%{bindir}/padsp'
      - '%{bindir}/pa-info'
      - '%{bindir}/pamon'
      - '%{bindir}/paplay'
      - '%{bindir}/parec'
      - '%{bindir}/parecord'
      - '%{bindir}/pax11publish'
      - '%{sysconfdir}/pulse/client.conf'

sources:
- kind: tar
  url: https://freedesktop.org/software/pulseaudio/releases/pulseaudio-13.0.tar.xz
  ref: 961b23ca1acfd28f2bc87414c27bb40e12436efcf2158d29721b1e89f3f28057
