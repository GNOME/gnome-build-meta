kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.35/gnome-online-accounts-3.35.90.tar.xz
  ref: a41e0084727eb886c73eb6fa8f78e95395aa289150d938da1489ba6c7f085c92
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
