kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.50/gnome-online-accounts-3.50.6.tar.xz
  ref: 5baac2a27953efb8946afc20d9621ce3aa6e57178b54791d12f8c544b4824497
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
