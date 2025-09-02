kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/49/adwaita-icon-theme-49.rc.tar.xz
  ref: 6eb67c22a5e601861cc067cc0505a1bdf3929ba5b7465f40cf6e4dd91d9e4d1d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
