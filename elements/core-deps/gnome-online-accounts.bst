kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.36/gnome-online-accounts-3.36.0.tar.xz
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/librest.bst
- sdk/WebKitGTK.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-telepathy
