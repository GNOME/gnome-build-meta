kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.48/gnome-online-accounts-3.48.1.tar.xz
  ref: 3ea0c71084bf595cce5caa37ceff2e853d0ec9644bb01fd4643300adb9517f8a
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
