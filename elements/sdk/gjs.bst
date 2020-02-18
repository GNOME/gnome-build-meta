kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gjs/1.58/gjs-1.58.5.tar.xz
  ref: e76d99c09f887438b9883e328710b26b3717f6dcdb4097dc7a9bab06ebd7a13a
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
