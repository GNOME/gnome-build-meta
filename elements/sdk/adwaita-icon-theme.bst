kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/48/adwaita-icon-theme-48.1.tar.xz
  ref: cbfe9b86ebcd14b03ba838c49829f7e86a7b132873803b90ac10be7d318a6e12
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
