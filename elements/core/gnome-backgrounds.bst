kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.35/gnome-backgrounds-3.35.91.tar.xz
  ref: c2b7fb6db98c05e205053daaa7f58c7f06ff91b45c4006052af17c578ae7b47f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
