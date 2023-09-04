kind: meson
sources:
- kind: git_tag
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.2.0-0-gf9843757630160f1222ef084a47931c7d0b90fe3
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
