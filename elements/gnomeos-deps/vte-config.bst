kind: manual

sources:
- kind: local
  path: files/gnomeos/vte-profile

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 -t "%{install-root}%{datadir}/gnomeos/profile.d" 90-gnomeos-vte.sh

  - |
    install -Dm644 -t "%{install-root}%{indep-libdir}/tmpfiles.d" 50-gnomeos-vte.conf

  - |
    %{install-extra}
