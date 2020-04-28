kind: autotools
sources:
- kind: tar
  url: https://www.sourceware.org/pub/lvm2/LVM2.2.02.177.tgz
  ref: 4025a23ec9b15c2cb7486d151c29dc953b75efc4d452cfe9dbbc7c0fac8e80f2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-dmeventd
    --enable-cmdlib
    --enable-pkgconfig
    --with-confdir=%{sysconfdir}
    --with-staticdir=%{sbindir}
    --with-usrlibdir=%{libdir}
    --with-usrsbindir=%{sbindir}
