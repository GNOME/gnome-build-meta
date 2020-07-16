kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-server/spice-0.14.3.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/spice-protocol.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:bootstrap-import.bst
