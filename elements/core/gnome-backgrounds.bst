kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.34/gnome-backgrounds-3.34.0.tar.xz
  ref: 02f505d208d8d343c12c7410495a0b8fc47ab376db4f7f1cac586aa66169b31b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
