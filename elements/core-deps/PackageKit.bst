kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.12.tar.xz
  ref: 1f4554becf5df0a4d8c51d6757b9401c7ee95bf2dd6f3a73575a8ddd4cd09a01
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
