kind: autotools
sources:
# https://gitlab.freedesktop.org/mobile-broadband/ModemManager/issues/85
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.12.2.tar.xz
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
