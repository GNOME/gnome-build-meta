kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
depends:
- sdk/graphene.bst
- sdk/gst-plugins-base.bst
- base.bst
