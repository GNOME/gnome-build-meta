kind: meson
sources:
- kind: git_tag
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.0.0.1-23-g1659bb3a124c935848203828304c9efe943258db
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgit2.bst
- core-deps/libssh2.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
