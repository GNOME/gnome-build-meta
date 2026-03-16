kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/50/d-spy-50.0.tar.xz
  ref: 1bddc86d8a2cf67b4f652dc461ccd8353112f088753420037c75f5454deaad10
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
