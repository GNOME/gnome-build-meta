kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.40/gnome-online-accounts-3.40.0.tar.xz
  ref: 585c4f979f6f543b77bfdb4fb01eb18ba25c2aec5b7866c676d929616fb2c3fa
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
