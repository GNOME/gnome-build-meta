kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.38/dconf-editor-3.38.3.tar.xz
  ref: 571af4c7dad4f049b53e6cd728b79addf08c27ddab6bc57b396d211866ee79e3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
