kind: meson
sources:
- kind: tar
  url: gnome_downloads:gssdp/1.3/gssdp-1.3.0.tar.xz
  ref: e739cf33f813403a53973cd8f2882dcd7208bad9582269f7066fc9e8ea3a52cc
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dsniffer=false
