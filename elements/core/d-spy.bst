kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.6/d-spy-1.6.0.tar.xz
  ref: a2d0a210513bb46470d00e34544791208330153f4cb34f8587172911ac4f8afd
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
