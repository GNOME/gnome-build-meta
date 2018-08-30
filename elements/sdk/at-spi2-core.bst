kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-core/2.29/at-spi2-core-2.29.1.tar.xz
  ref: 0606538f07e9dd1a423279a3e58d29c71c568bba46360f13705c576f4bd56916
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
