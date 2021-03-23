kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/40/gnome-screenshot-40.0.tar.xz
  ref: 368ca95a39e39dc2406c849e8c4205e3f574acdd874c30741873455e3d21a5e2
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
