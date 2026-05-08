kind: make

sources:
- kind: git_repo
  url: thekelleys:dnsmasq.git
  track: 'v*.*'
  exclude:
  - '*test*'
  - '*rc*'
  ref: v2.93-0-g3ff66da573a77c8783deca10ec8c6bba07cd85e6

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
