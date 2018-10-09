kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgnomekbd/3.26/libgnomekbd-3.26.0.tar.xz
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
