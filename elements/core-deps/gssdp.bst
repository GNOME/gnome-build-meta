kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gssdp/1.0/gssdp-1.0.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
