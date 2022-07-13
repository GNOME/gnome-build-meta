kind: meson

sources:
- kind: tar
  url: gnome_downloads:dspy/1.2/dspy-1.2.1.tar.xz
  ref: 4e39c0d6da3af3b78901225dd151233857be221b5fb3ad82c1db1587236b6652
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
