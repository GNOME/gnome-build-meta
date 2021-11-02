kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gfbgraph/0.2/gfbgraph-0.2.5.tar.xz
  ref: 9cb381b3f78ba1136df97af3f06e3b11dcc2ab339ac08f74eda0f8057d6603e3
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librest.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
