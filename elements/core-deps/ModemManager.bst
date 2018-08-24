kind: autotools
sources:
# https://gitlab.freedesktop.org/mobile-broadband/ModemManager/issues/85
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.8.0.tar.xz
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
