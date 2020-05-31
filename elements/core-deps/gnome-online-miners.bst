kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-miners/3.34/gnome-online-miners-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph-0.2.bst
- core-deps/tracker-2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-windows-live
