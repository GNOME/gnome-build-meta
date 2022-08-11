kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/43/dconf-editor-43.beta.tar.xz
  ref: 48d606fd9676d315f7cac9a5ee487f53c983bde5f88dbd3d42977ca8be85fbfb
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
