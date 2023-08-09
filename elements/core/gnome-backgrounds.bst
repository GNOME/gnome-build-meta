kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/45/gnome-backgrounds-45.beta.tar.xz
  ref: bfdfdf66c4b32dc7f76c71601de5ab7d1d1707f25871931e11e28d7b83e96fe7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
