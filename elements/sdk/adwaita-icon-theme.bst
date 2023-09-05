kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/45/adwaita-icon-theme-45.rc.tar.xz
  ref: d948ffac9e3182529580c2ad1b65e4908cc193fb9569d0a56826728bf99827a3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
