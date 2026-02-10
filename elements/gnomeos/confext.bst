kind: manual

sources:
- kind: local
  path: files/gnomeos/confext

build-depends:
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/stripper.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - |
    g++ -std=c++20 ${CFLAGS} ${LDFLAGS} migrate-confext.cpp -o migrate-confext

  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' \
        initrd-confext.service \
        initrd-migrate-confext.service
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/confext.conf.d' mutable.conf
    install -Dm755 -t '%{install-root}%{indep-libdir}/gnomeos' migrate-confext
