kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.58/gobject-introspection-1.58.3.tar.xz
  ref: 025b632bbd944dcf11fc50d19a0ca086b83baf92b3e34936d008180d28cdc3c8
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-python=python3
