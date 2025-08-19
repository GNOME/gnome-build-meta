kind: manual

sources:
- kind: local
  path: files/gnomeos/nano-default-editor

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}%{datadir}/gnomeos/profile.d" 91-gnomeos-nano-default-editor.sh
  - install -Dm644 -t "%{install-root}%{indep-libdir}/tmpfiles.d" 51-gnomeos-nano-default-editor.conf
  - "%{install-extra}"
