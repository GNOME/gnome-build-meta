kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/48/d-spy-48.beta.tar.xz
  ref: 1968bc21c30c676ade7fb6f69fa55ca718cace26d5242909246a22dc521c9e10
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
