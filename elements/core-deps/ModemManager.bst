kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.12.10.tar.xz
  ref: b2b3058bbb72adf98b24707fdbebe58e590644a38145e30d574f685f154bf8aa
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
