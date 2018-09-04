kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgnomekbd/3.26/libgnomekbd-3.26.0.tar.xz
  ref: ea3b418c57c30615f7ee5b6f718def7c9d09ce34637324361150744258968875
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
