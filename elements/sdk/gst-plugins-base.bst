kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-base
  track: master
depends:
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- base.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
