kind: manual

sources:
- kind: local
  path: files/gnomeos/bt-set-addr

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/udev/rules.d' 90-bt-set-addr.rules
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' bt-set-addr@.service
    install -Dm755 -t '%{install-root}%{libexecdir}' bt-set-addr
  - |
    %{install-extra}
