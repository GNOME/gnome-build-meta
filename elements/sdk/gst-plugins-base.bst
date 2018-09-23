kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-base
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Dcdparanoia=disabled \
    -Dexamples=disabled \
    -Dgl-graphene=disabled \
    -Dlibvisual=disabled \
    -Dtremor=disabled
