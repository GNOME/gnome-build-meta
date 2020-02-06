kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz
  ref: 7c4ba0bff001f06d8983cfc105adaac42df1d1267a2591798a780bac557a5819
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
