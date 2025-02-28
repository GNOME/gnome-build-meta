kind: autotools

sources:
- kind: tar
  url: freedesktop_software:ModemManager/ModemManager-1.18.12.tar.xz
  ref: b464e4925d955a6ca86dd08616e763b26ae46d7fd37dbe281678e34065b1e430

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-udev-base-dir=/usr/lib/udev
    --disable-more-warnings
