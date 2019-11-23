kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.32/gnome-online-accounts-3.32.1.tar.xz
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
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
