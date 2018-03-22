kind: autotools
sources:
- kind: tar
  url: https://www.sourceware.org/pub/lvm2/LVM2.2.02.177.tgz
depends:
- base.bst
variables:
  conf-local: --enable-dmeventd --enable-cmdlib --enable-pkgconfig
    --with-confdir=%{sysconfdir} --with-staticdir=%{sbindir}
    --with-usrlibdir=%{libdir} --with-usrsbindir=%{sbindir}
