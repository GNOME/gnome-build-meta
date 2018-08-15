depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 18abe34421aa3b52ff47d4ba93aa282f8f8944717dd644a5c0c81eeeac9c7eb1
  url: http://www.freedesktop.org/software/ModemManager/ModemManager-1.8.0.tar.xz
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev  --disable-more-warnings
