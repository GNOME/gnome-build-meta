kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.86.tar.xz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}"
    install
