kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/0.99/libgit2-glib-0.99.0.1.tar.xz
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
