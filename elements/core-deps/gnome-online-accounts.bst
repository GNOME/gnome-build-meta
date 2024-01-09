kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.49/gnome-online-accounts-3.49.0.tar.xz
  ref: 72b0eb78f32464c3b868c6230e21ffbc2dbd9c370458b3bf07cbe0ac39534059
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
