kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/accountsservice/accountsservice-0.6.55.tar.xz
  ref: ff2b2419a7e06bd9cb335ffe391c7409b49a0f0130b890bd54692a3986699c9b
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
