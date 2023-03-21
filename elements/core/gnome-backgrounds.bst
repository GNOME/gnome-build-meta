kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/43/gnome-backgrounds-43.1.tar.xz
  ref: 8e459cad38a7574683a55e5e77690e658c6f9feaeec9cb82039ab25ba2bca05d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
