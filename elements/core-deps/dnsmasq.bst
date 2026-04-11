kind: make

sources:
- kind: git_repo
  url: thekelleys:dnsmasq.git
  track: 'v*.*'
  exclude:
  - '*test*'
  - '*rc*'
  ref: v2.92-0-gd8f66f4fda02ca50616f428d9c161c8ca1a0cb70

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
