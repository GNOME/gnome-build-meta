kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.36/file-roller-3.36.3.tar.xz
  ref: 0959e10a5d7a7442809624be9879d95db462ca76e8c66ad6299310e6acdb81b7
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
