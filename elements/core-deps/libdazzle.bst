kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.40/libdazzle-3.40.0.tar.xz
  ref: dba99a7e65fa6662c012b306e5d0f99ff3b466a46059ea7aa0104aaf65ce4ba5
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
