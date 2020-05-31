kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.37/gnome-backgrounds-3.37.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
