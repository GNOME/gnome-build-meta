kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/40/gnome-screenshot-40.rc.tar.xz
  ref: 4654c6921c58ca1945cde71dd858e979391e60e530a469bca9ea31aa7921a0d1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
