kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.40/gnome-online-accounts-3.40.1.tar.xz
  ref: 955a03128d0e87855d34d7c534e088f6286ed7ac01baa4ef824ef42a2cb39aad
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
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-gtk-doc
