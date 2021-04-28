kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/40/gnome-backgrounds-40.0.tar.xz
  ref: 46c3133a5ed7180347ae396962bf8827085f0f3b7cd9385452d623c4a167a2f6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
