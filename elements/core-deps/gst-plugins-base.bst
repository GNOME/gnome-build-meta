kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-base
  track: master
depends:
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libgudev.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
