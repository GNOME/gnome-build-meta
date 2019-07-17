kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz
depends:
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk2-engine
