kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/41/adwaita-icon-theme-41.0.tar.xz
  ref: ef5339d8c35fcad5d10481b70480803f0fa20b3d3cbc339238fcaceeaee01eba
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
