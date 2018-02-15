kind: autotools
sources:
- url: https://download.gnome.org/sources/gspell/1.7/gspell-1.7.1.tar.xz
  kind: tar
  ref: 9a0f3eec841ab2eada4a6716736752b6b4e551ce6e1e641fdd5f722ccc421962
depends:
- core-deps/enchant-2.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/m4-common.bst
- base.bst
