kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
  ref: 57a99b5dfe7fdae794e3d1ee7a62973a368e91e414bd0dfa5d84434de5b14804
depends:
- filename: core-deps/intltool.bst
  type: build
- core-deps/libdaemon.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --with-distro=none
    --disable-qt3
    --disable-qt4
    --disable-gtk
    --disable-python
    --disable-mono
