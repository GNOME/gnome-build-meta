kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gfbgraph/0.2/gfbgraph-0.2.4.tar.xz
  ref: 6065391f35e7335588cc6b0cc4c1abbce7341488573a654551264cb9793b9379
depends:
- core-deps/gnome-online-accounts.bst
- filename: core-deps/intltool.bst
  type: build
- core-deps/librest.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
