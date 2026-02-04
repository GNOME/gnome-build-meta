kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.92.tar.xz
  ref: 4bf50c2c1018f9fbc26037df51b90ecea0cb73d46162846763b92df0d6c3a458

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
