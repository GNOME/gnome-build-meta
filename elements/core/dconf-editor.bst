kind: meson

sources:
- kind: tar
  url: gnome_downloads:dconf-editor/45/dconf-editor-45.0.tar.xz
  ref: 46a3cb10a21e8b8e2536b9e66c3e4827c05a213463599f2c7b7b227d62bd8b5e
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
