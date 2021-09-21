kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/41/gnome-backgrounds-41.0.tar.xz
  ref: 1da1ac0d261bedf0fcd2c85b480bc65505e23cf51f1143126c0d37717e693145
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
