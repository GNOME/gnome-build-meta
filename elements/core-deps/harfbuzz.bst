kind: autotools
sources:
- kind: git
  url: github_com:behdad/harfbuzz
  track: master
depends:
- core-deps/glib.bst
- core-deps/ragel.bst
- base.bst
