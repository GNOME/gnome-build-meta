kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.35/gnome-backgrounds-3.35.91.tar.xz
  ref: 9591312d7fee93a38f437441c3e416a1493fcdd5d8141e13d98f0065793b45ae
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
