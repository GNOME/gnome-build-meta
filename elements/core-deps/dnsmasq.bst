kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.91.tar.xz
  ref: f622682848b33677adb2b6ad08264618a2ae0a01da486a93fd8cd91186b3d153
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}"
    install
