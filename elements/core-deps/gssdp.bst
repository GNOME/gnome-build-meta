kind: meson
sources:
- kind: tar
  url: gnome_downloads:gssdp/1.2/gssdp-1.2.2.tar.xz
  ref: cabb9e3b456b8354a55e23eb0207545d974643cda6d623523470ebbc4188b0a4
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
  meson-local: -Dsniffer=false
