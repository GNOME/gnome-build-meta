kind: make
sources:
- kind: tar
  url: http://www.thekelleys.org.uk/dnsmasq/dnsmasq-2.85.tar.xz
  ref: ad98d3803df687e5b938080f3d25c628fe41c878752d03fbc6199787fee312fa
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}"
    install
