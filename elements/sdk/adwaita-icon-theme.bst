kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/46/adwaita-icon-theme-46.0.tar.xz
  ref: 4bcb539bd75d64da385d6fa08cbaa9ddeaceb6ac8e82b85ba6c41117bf5ba64e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
