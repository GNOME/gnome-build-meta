kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gspell/1.8/gspell-1.8.1.tar.xz
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
