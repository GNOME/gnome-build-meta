kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gjs/1.58/gjs-1.58.4.tar.xz
  ref: 261a3f666c771d7744965fe71b804fc2c3a3d46a8e3e8d4f7ed5ef97967ebd5f
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
