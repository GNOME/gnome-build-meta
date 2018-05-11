kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/ModemManager/ModemManager-1.7.991.tar.xz
  ref: 4e366243bd4983f2e6efe35cb901cf5da51939307b5d6299fe622a9fcf411745
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- base.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
