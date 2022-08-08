kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/1.1/libgit2-glib-1.1.0.tar.xz
  ref: c38dd7575daf8141e1e422333a575faf65f3c9210c08e83e981b88dd41bf1ef3
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
