kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libdaemon.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
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
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/bvnc.desktop"
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/bssh.desktop"
