kind: autotools
sources:
- url: http://www.freedesktop.org/software/ModemManager/ModemManager-1.7.990.tar.xz
  kind: tar
  ref: d465094fc6fc173354f5a00d212049056829cc245d60a9083f3c53f86a8f90ec
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- base.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
