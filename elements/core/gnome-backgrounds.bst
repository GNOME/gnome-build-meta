kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/44/gnome-backgrounds-44.beta.tar.xz
  ref: 5013d343882afbce2bdf91a88b07b0b0d906d66de363cf94386fe868b6e0e9c0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
