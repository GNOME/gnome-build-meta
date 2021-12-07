kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/41/gnome-screenshot-41.0.tar.xz
  ref: 4adb7dec926428f74263d5796673cf142e4720b6e768f5468a8d0933f98c9597
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
