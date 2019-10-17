kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.34/gnome-screenshot-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- freedesktop-sdk.bst:bootstrap-import.bst
