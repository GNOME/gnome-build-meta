kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.36/gnome-backgrounds-3.36.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
