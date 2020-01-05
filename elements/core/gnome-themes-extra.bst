kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk2-engine
