kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-miners/3.34/gnome-online-miners-3.34.0.tar.xz
  ref: 845c2260fb12f14315c800d04d60f37e076c7c7b4222587ae75f108562fa52d8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
