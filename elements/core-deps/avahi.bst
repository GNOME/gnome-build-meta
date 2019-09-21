kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
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
config:
  install-commands:
    (>):
    - echo "NoShowIn=GNOME" >> "%{install-root}%{datadir}/applications/bvnc.desktop"
    - echo "NoShowIn=GNOME" >> "%{install-root}%{datadir}/applications/bssh.desktop"
