kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.48/gnome-online-accounts-3.48.3.tar.xz
  ref: 37e4372c345c770f7172da3c605183a43081ea0e915ecc448fb2d65a38e9d565
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr-3.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
