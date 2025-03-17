kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/48/d-spy-48.0.tar.xz
  ref: 0f7a09019046194d97fc3c342b384ea1c380e10a9cfc8025bfcde57d595c3830
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
