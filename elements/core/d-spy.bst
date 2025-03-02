kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/48/d-spy-48.rc.tar.xz
  ref: 7de5280a83fc7d2f7d0c924b336fc0532c42b8c4c86da7d9ea7fc6e78c4eb02d
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
