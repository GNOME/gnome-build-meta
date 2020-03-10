kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.36/libdazzle-3.36.0.tar.xz
  ref: 82b31bbf550fc62970c78bf7f9d55e5fae5b8ea13b24fe2d13c8c6039409d958
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
