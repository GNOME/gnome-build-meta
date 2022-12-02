kind: meson
sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-5-g392614e1f1912bd5949e5f4f7c46673cdbcfcb3c

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
