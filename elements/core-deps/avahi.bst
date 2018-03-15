kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
depends:
- core-deps/libdaemon.bst
- base.bst
variables:
  conf-local: --with-distro=none --disable-qt3 --disable-qt4 --disable-gtk
    --disable-python --disable-mono
