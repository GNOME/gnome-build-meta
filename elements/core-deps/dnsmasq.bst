kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.92.tar.xz
  ref: 4bf50c2c1018f9fbc26037df51b90ecea0cb73d46162846763b92df0d6c3a458
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}" install
