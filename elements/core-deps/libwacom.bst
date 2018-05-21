kind: autotools
sources:
- kind: tar
  url: sourceforge_net:linuxwacom/files/libwacom/libwacom-0.23.tar.bz2
depends:
- core-deps/glib.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
