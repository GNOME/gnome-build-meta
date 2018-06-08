kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-base
  track: master
depends:
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Ddisable_gtkdoc=true
