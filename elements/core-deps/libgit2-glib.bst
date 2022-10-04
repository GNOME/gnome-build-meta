kind: meson
sources:
- kind: git_tag
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.0.0.1-18-g258a06a584be3978bc9cca1855ccda27fd79de3b
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
