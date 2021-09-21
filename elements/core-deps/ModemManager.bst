kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.18.2.tar.xz
  ref: 374be158ae1c1fb38a29eef1cc3cdf89ff3536b48ff1320d208ab204ea6c5f8a
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
