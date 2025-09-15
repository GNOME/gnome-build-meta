kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/49/d-spy-49.1.tar.xz
  ref: e26e18120e64d451b61f202cfaa3913627a7031c2a954aecf391c83d83d09d8a
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
