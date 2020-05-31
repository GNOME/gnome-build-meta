kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.37/adwaita-icon-theme-3.37.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
