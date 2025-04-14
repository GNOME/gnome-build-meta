kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-app-list/3.0/gnome-app-list-3.0.tar.xz
  ref: 98a911d85cae9651081994ba9ac6b6e9a3131c72e3dd368d227a1ada9bbfc4a0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
