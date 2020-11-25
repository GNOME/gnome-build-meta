kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.14.8.tar.xz
  ref: fe1a26ba51b4bda7abd09ad4dadedd87d8b8154809fc9d88e94f75fdfff19295
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
