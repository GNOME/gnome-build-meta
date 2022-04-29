kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.44/gnome-online-accounts-3.44.0.tar.xz
  ref: 381d5d4106f435b6f87786aa049be784774e15996adcc02789807afc87ea7342
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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
  conf-local: >-
    --enable-gtk-doc
