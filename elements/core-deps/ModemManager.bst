kind: autotools
sources:
# https://gitlab.freedesktop.org/mobile-broadband/ModemManager/issues/85
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.8.2.tar.xz
  ref: 96f2a5f0ed15532b4c4c185b756fdc0326e7c2027cea26a1264f91e098260f80
depends:
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
