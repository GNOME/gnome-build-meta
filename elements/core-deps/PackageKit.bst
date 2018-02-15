kind: autotools
sources:
- url: http://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.7.tar.xz
  kind: tar
  ref: 9fe34ee5657e45267e829bc7a1c9cf4d024e0ea00d3accfb40dda4be8cac606a
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- base.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
