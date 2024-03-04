kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/46/adwaita-icon-theme-46.rc.tar.xz
  ref: 4745e32fa6d7d945f94d2869bc8e2002da47ccd59a6d5170c3a9f63189d3bfa4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
