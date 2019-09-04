kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/accountsservice/accountsservice-0.6.55.tar.xz
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
