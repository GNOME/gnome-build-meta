kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.36/dconf-editor-3.36.4.tar.xz
  ref: 3ec309bbc920b15c2a5683e1a4962abf6911a8762c8a113c4d794f7e0ea53e79
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
