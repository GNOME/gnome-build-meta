kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.10.tar.xz
  ref: 4bc4061420e6fc831e1eeab167bc3e096da0d132282fbd0d1d9a5426c4aa4ed7
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion --disable-gtk-module
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
