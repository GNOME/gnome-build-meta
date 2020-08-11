kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.37/gnome-online-accounts-3.37.90.tar.xz
  ref: 9f6982c896e6235a2e85b8a497c7bf63a4a288b5678db40dc373515efbedb1bb
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
