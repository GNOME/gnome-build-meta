kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.93.tar.xz
  ref: 0c00d4e5c97c8306e5fb932b348b34269c9c29a0e7df0e8e82958b407092bc19
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
