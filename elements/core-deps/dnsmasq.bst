kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.90.tar.xz
  ref: 8e50309bd837bfec9649a812e066c09b6988b73d749b7d293c06c57d46a109e4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: BINDIR=%{sbindir}
