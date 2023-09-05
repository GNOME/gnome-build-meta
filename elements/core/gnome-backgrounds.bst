kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/45/gnome-backgrounds-45.rc.tar.xz
  ref: 563f0cd1359374cfdb0320d595b5c8f881d273c78dcbb67b02ec425b36b4f1f2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
