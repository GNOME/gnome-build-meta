kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/1.0/libgit2-glib-1.0.0.1.tar.xz
  ref: 460a5d6936950ca08d2d8518bfc90c12bb187cf6e674de715f7055fc58102b57
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgit2.bst
- core-deps/libssh2.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
