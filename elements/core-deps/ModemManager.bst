kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.16.4.tar.xz
  ref: 167e60b26fa05887f87a0b3fb54143d7845e6e4d8c2f2dd93afac059f41e7edf
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-udev-base-dir=/usr/lib/udev
    --disable-more-warnings
