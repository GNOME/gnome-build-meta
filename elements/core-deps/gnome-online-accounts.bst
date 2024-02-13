kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.49/gnome-online-accounts-3.49.2.tar.xz
  ref: 75dfc7dc76dc58a9a1513de930bdbf7ee4dcf9ebdabb5222634bceffdcad90a2
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
