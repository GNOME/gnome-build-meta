kind: autotools
sources:
# https://gitlab.freedesktop.org/mobile-broadband/ModemManager/issues/85
- kind: tar
  url: https://www.freedesktop.org/software/ModemManager/ModemManager-1.10.8.tar.xz
  ref: cbe174078dbdf3f746a55f0004353d3c27da2a31da553036d90fc7dc34a0169a
depends:
- core-deps/libgudev.bst
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-udev-base-dir=/usr/lib/udev --disable-more-warnings
