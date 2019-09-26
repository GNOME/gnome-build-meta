kind: autotools
sources:
- kind: tar
  url: sourceforge_net:linuxwacom/files/libwacom/libwacom-0.23.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
