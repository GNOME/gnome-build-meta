kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:ModemManager/ModemManager.git
  track: master
depends:
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- sdk/libgudev.bst
- base.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
