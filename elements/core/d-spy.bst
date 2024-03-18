kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.10/d-spy-1.10.0.tar.xz
  ref: 555812b9c6540551da599ee8147880ad3915b93c87e1757b6d1cfd90a0e05e53
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
