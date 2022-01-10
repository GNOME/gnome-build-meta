kind: autotools
sources:
- kind: tar
  url: freedesktop_www:software/ModemManager/ModemManager-1.18.4.tar.xz
  ref: 11fb970f63e2da88df4b6d8759e4ee649944c515244b979bf50a7a6df1d7f199
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
