kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-app-list/0.2/gnome-app-list-0.2.tar.xz
  ref: 5b0b033c5a647298eb1a0886e6724d39deb9fe5d978b9df001e388e1d0ae3a99

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
