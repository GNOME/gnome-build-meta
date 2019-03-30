kind: autotools
sources:
- kind: tar
  url: sourceforge_net:linuxwacom/files/libwacom/libwacom-0.23.tar.bz2
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
