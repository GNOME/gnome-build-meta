kind: meson
sources:
- kind: tar
  url: gnome_downloads:gssdp/1.2/gssdp-1.2.2.tar.xz
  ref: cabb9e3b456b8354a55e23eb0207545d974643cda6d623523470ebbc4188b0a4
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dsniffer=false
