kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.5/d-spy-1.5.0.tar.xz
  ref: ab139c20e30d62ad6c82ec933a612f55cc9667f32fe79d455cf507988c235cbd
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
