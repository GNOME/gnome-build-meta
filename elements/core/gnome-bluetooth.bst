kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/3.34/gnome-bluetooth-3.34.0.tar.xz
  ref: e867e67423e1dc78c56c2ea11dec066ce0254238d559e4777c80fa2935eb6baf
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
