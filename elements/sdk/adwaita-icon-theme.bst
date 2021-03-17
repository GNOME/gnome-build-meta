kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/40/adwaita-icon-theme-40.rc.tar.xz
  ref: d794a492e8e7db33bdc19898effabc1f1205302e166da522c5351a8eba9da404
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
