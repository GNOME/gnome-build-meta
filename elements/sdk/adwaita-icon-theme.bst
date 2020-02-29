kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.35/adwaita-icon-theme-3.35.92.tar.xz
  ref: a6592695a373fb0cdc380547f2c1965c0812bc807580ba2fba7eab641f22cafe
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
