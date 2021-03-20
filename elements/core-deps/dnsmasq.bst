kind: make

sources:
- kind: tar
  url: http://www.thekelleys.org.uk/dnsmasq/dnsmasq-2.84.tar.xz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}" install
