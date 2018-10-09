kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.11.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion --disable-gtk-module
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
