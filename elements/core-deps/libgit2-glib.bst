kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/1.2/libgit2-glib-1.2.0.tar.xz
  ref: 1331dada838f4e1f591b26459d44126a325de762dc3cd26153a31afbdfe18190
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
