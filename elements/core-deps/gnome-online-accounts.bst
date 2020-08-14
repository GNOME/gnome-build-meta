kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.34/gnome-online-accounts-3.34.2.tar.xz
  ref: 6b2a272a526647c918edf9df6457ab23613c1d2f1ac08f6d3e5ccfdecac9ce0e
depends:
- core-deps/librest.bst
- sdk/WebKitGTK.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
