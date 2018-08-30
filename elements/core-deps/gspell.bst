kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gspell/1.8/gspell-1.8.1.tar.xz
  ref: 819a1d23c7603000e73f5e738bdd284342e0cd345fb0c7650999c31ec741bbe5
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
