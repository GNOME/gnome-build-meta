kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gspell/1.8/gspell-1.8.3.tar.xz
  ref: 5ae514dd0216be069176accf6d0049d6a01cfa6a50df4bc06be85f7080b62de8
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
