kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gfbgraph/0.2/gfbgraph-0.2.4.tar.xz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
