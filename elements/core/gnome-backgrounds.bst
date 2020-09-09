kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.37/gnome-backgrounds-3.37.92.1.tar.xz
  ref: a5d8890535625f51beae212fe8abece5ad2bad11c79183281f33cb06acaf1109
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
