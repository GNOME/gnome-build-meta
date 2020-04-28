kind: autotools
sources:
- kind: tar
  url: github_com:lathiat/avahi/releases/download/v0.7/avahi-0.7.tar.gz
  ref: 57a99b5dfe7fdae794e3d1ee7a62973a368e91e414bd0dfa5d84434de5b14804
- kind: local
  path: files/avahi/avahi.conf
  directory: extra
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
    --disable-stack-protector
config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/sysusers.d" \
                     extra/avahi.conf
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/bvnc.desktop"
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/bssh.desktop"
