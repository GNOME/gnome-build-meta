kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/accountsservice/accountsservice-0.6.54.tar.xz
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
