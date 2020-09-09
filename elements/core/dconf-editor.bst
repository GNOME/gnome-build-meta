kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.37/dconf-editor-3.37.91.tar.xz
  ref: c13f98eb9e16f53cf8e045724a63f42dfb8c289d6ce359ca4ce37a8c6958b321
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
