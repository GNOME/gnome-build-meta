kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.35/libdazzle-3.35.3.tar.xz
  ref: df67f7a68096e4b33a70ee0bad14cd8a6778425deb087879b5cd8fef8f671304
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
