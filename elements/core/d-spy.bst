kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/50/d-spy-50.rc.tar.xz
  ref: 4e0599b55bca4b4993aa0d58be53024b37bc77d4d086190f784e31d5c19a1b71
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
