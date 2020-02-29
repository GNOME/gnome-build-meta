kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.12.6.tar.xz
  ref: 2eb3353ee5518005c51d429308695c69d8c38cf2fd9102b04f785c03a0cc624c
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-udev-base-dir=/usr/lib/udev
    --disable-more-warnings
