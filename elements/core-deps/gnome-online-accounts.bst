kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.50/gnome-online-accounts-3.50.2.tar.xz
  ref: df16ad975d139c6bfc4ebb2ec8bb8327297a791ef2bf0b977c78076af5faa98e
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
