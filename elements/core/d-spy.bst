kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/47/d-spy-47.0.tar.xz
  ref: effb30d432ad5e43e6c449bdf8e317da297e56e027416e73e2e96c4cf18f69e8
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
