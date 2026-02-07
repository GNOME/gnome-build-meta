kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/50/d-spy-50.beta.tar.xz
  ref: 74cda848690fcbe42a78a3355c77bcfa19d722b4b7ea014685fc1574e226e65d
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
