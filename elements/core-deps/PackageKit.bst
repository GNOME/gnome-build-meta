kind: autotools
sources:
- url: http://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.9.tar.xz
  kind: tar
  ref: a49ffa7ee4f023589a3520afd498a951eb10e2e0b81972c9f767d27a6addbf47
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
