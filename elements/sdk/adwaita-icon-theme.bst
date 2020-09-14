kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.38/adwaita-icon-theme-3.38.0.tar.xz
  ref: 6683a1aaf2430ccd9ea638dd4bfe1002bc92b412050c3dba20e480f979faaf97
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
