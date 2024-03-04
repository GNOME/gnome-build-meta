kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.9/d-spy-1.9.1.tar.xz
  ref: e1760678977656f3f92defbd4c202cf891f5b874fcf058baeac67c8f570c09fd
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
