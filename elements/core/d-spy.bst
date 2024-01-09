kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.9/d-spy-1.9.0.tar.xz
  ref: 372b6ba58ce1c10165dd147ebeeb3991048fd6d80239ee9a8db627f75c828f36
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
