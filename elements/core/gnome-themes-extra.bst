kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz
  ref: 7c4ba0bff001f06d8983cfc105adaac42df1d1267a2591798a780bac557a5819
depends:
- core-deps/cantarell-fonts.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk2-engine
