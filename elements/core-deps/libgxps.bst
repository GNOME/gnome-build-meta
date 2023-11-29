kind: meson

sources:
- kind: git_repo
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-6-g665dc29aff9120f10322721303d7ca91761c5d02

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
