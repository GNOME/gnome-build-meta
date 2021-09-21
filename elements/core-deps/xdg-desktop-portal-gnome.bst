kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/41/xdg-desktop-portal-gnome-41.0.tar.xz
  ref: cd5e359a32b059a7eabc8c9c1bcbb964aea0dbc5b1b1b24e8034c06f222c5d71
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/gsettings-desktop-schemas.bst
- core-deps/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
