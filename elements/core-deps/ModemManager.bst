kind: autotools
sources:
- kind: tar
  url: freedesktop_software:ModemManager/ModemManager-1.18.10.tar.xz
  ref: 16255f8229eeeb2dfecb8dd1370360d46f1015ec85e6fba5c1cbd9f4371d65eb
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
