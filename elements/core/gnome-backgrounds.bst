kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.38/gnome-backgrounds-3.38.0.tar.xz
  ref: f7712a873a80c9a9fcf3952611effeb2d9aed23a3e8abfcda8afb15c427d1ee3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
