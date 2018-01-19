kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
depends:
- core-deps/graphene.bst
- core-deps/gst-plugins-base.bst
- core-deps/meson.bst
- base.bst
