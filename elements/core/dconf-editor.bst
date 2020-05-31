kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.36/dconf-editor-3.36.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
