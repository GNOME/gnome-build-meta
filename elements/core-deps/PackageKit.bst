kind: autotools
sources:
- kind: git
  url: github_com:hughsie/PackageKit.git
  track: master
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- sdk/polkit.bst
- base.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion --disable-gtk-module
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
