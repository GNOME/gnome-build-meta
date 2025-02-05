kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/48/adwaita-icon-theme-48.beta.tar.xz
  ref: 38cfdb353736443b6466ae836ea0ffbf3e4c159241c5cba591647f697f76c445
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
