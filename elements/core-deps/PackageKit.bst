kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.11.tar.xz
  ref: 38c059b9db11180e2fa2607a4688f5a8310267afd58a6475817f004f8ae5263a
depends:
- core-deps/NetworkManager.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion --disable-gtk-module
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
