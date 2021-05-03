kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.38/gnome-online-accounts-3.38.2.tar.xz
  ref: d6106ca173b57ade2cc6e4fc733fad012d698392b7803a4e057cf0871dfde953
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
