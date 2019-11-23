kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gspell/1.8/gspell-1.8.2.tar.xz
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
