kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/43/dconf-editor-43.alpha.tar.xz
  ref: f52c942405f0cca03265e17dd8d6639bdab33a9beef17349e5a0bd0c6026e34b
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
