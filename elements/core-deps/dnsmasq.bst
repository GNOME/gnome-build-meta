kind: make

sources:
- kind: tar
  url: thekelleys:dnsmasq/dnsmasq-2.86.tar.xz

  ref: 28d52cfc9e2004ac4f85274f52b32e1647b4dbc9761b82e7de1e41c49907eb08
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 BINDIR=%{sbindir} PREFIX="%{prefix}" DESTDIR="%{install-root}"
    install
