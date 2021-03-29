kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.38/gnome-online-accounts-3.38.1.tar.xz
  ref: e18889d67806da84d1261bfed1cf61d2baec131d2d0d0a92f83ff33d4649358e
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-telepathy
