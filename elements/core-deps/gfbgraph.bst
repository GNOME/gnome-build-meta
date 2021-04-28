kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gfbgraph/0.2/gfbgraph-0.2.4.tar.xz
  ref: 6065391f35e7335588cc6b0cc4c1abbce7341488573a654551264cb9793b9379
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librest.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
