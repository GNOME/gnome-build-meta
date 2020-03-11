kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.36/gnome-screenshot-3.36.0.tar.xz
  ref: 33495d892707179254b743f8f70c9a82cde5c5f2c7ea3db634a2ba7ea7331266
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- freedesktop-sdk.bst:bootstrap-import.bst
