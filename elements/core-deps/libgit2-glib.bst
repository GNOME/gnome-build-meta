kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgit2-glib/1.2/libgit2-glib-1.2.1.tar.xz
  ref: 97423a779002b3be8751c75f9d79049dfccca3616a26159fc162486772ba785f
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
