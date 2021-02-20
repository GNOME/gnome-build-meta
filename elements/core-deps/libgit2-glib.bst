kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/0.99/libgit2-glib-0.99.0.1.tar.xz
  ref: e05a75c444d9c8d5991afc4a5a64cd97d731ce21aeb7c1c651ade1a3b465b9de
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
