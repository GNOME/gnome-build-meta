kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.50/gnome-online-accounts-3.50.5.tar.xz
  ref: 2d24942700ebb6d40a4757bb1d202f3c238f80f30df6f32c63f57a9edcb73f1a
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
