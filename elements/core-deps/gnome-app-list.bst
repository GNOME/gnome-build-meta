kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-app-list/2.0/gnome-app-list-2.0.tar.xz
  ref: 9219c50b20663159a861d7e01207d5d5ab7636a8a6a5c9754cedcfee13dc4625
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
