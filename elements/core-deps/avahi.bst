kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
  ref: 57a99b5dfe7fdae794e3d1ee7a62973a368e91e414bd0dfa5d84434de5b14804
  etag: '"d76c59d0882ac6c256d70a2a585362a6"'
depends:
- core-deps/libdaemon.bst
- base.bst
variables:
  conf-local: --with-distro=none --disable-qt3 --disable-qt4 --disable-gtk
    --disable-python --disable-mono
