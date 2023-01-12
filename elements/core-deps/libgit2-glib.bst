kind: meson
sources:
- kind: git_tag
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.0.0.1-22-gd97e73f499ee0b8e80cac3c4696ed234e4e993dd
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
