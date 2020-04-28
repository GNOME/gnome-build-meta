kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.36/gnome-online-accounts-3.36.0.tar.xz
  ref: 1c8f62990833ca41188dbb80c5e99d99b57a62608ca675bbcd37bc2244742f2e
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/librest.bst
- sdk/WebKitGTK.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
