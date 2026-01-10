kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/49/d-spy-49.2.tar.xz
  ref: b814ff27d828aabcda72f2c62f1b41d62035f743d06fd9a7e3c5c986c4879a69
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
