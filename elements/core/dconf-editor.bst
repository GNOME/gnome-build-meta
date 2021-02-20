kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.38/dconf-editor-3.38.2.tar.xz
  ref: 1253dad87e6213fbf313ff9ec9dc4358aa1b10261f28072c1dc0e0997b92f835

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
