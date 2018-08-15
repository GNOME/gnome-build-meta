depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/polkit.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 035928f5dea46f2220657e0bd669bc7fac45165b700c0a81b2b66ff2c3dbc74a
  url: http://www.freedesktop.org/software/accountsservice/accountsservice-0.6.50.tar.xz
