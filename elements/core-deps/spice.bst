kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-server/spice-0.14.3.tar.bz2
  ref: 551d4be4a07667cf0543f3c895beb6da8a93ef5a9829f2ae47817be5e616a114
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/spice-protocol.bst
depends:
- core-deps/libcacard.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-smartcard
