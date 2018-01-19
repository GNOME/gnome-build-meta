kind: autotools
sources:
- kind: git
  url: github_com:hughsie/PackageKit.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- core/NetworkManager.bst
- base.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
