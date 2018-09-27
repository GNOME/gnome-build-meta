kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/accountsservice/accountsservice-0.6.50.tar.xz
  ref: 035928f5dea46f2220657e0bd669bc7fac45165b700c0a81b2b66ff2c3dbc74a
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
