kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.38/dconf-editor-3.38.0.tar.xz
  ref: 6d89249a379082de6a8e95a2a202d0ca5fe1c9776bc0d5d3ef065567d8183eb4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
