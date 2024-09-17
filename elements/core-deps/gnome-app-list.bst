kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-app-list/1.0/gnome-app-list-1.0.tar.xz
  ref: b7c2eb35595033ac094a75d99fddaecf6219dec590ca96ee03920b6bbb2eab73

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
