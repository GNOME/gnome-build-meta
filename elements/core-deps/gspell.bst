kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gspell/1.8/gspell-1.8.0.tar.xz
  ref: 1b7fc2c5b84ede43bc52d513f0601238af92b572a42b19363da6d067fb529345
depends:
- core-deps/enchant-2.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/m4-common.bst
- base.bst
