kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.34/gnome-online-accounts-3.34.1.tar.xz
  ref: 4832ca8e48d3a497fc676e7b6f146009ab4206995362977b9805aa39f164783a
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
