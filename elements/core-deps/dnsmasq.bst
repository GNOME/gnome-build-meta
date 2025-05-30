kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.91.tar.xz
  ref: f622682848b33677adb2b6ad08264618a2ae0a01da486a93fd8cd91186b3d153

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
