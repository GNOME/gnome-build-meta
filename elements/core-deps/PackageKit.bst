kind: autotools
sources:
- kind: git
  url: github_com:hughsie/PackageKit.git
  track: master
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
