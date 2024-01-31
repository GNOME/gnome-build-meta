kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.4-19-g4e72b03924e5494ee0c3327a2a819c0b9283bfb2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
