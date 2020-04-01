kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsoup/2.68/libsoup-2.68.4.tar.xz
  ref: 2d50b12922cc516ab6a7c35844d42f9c8a331668bbdf139232743d82582b3294
depends:
- sdk/brotli.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: sdk/krb5.bst
- filename: components/libpsl.bst
  junction: freedesktop-sdk.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/sqlite.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dtls_check=false -Dgtk_doc=true -Dntlm=disabled
