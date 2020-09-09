kind: autotools

sources:
- kind: tar
  url: https://ftp.gnu.org/gnu/gcc/gcc-9.2.0/gcc-9.2.0.tar.xz
  ref: ea6ef08f121239da5695f76c9b33637a118dcf63e24164422231917fa61fb206
- kind: tar
  url: https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.xz
  directory: gmp
  ref: 87b565e89a9a684fe4ebeeddb8399dce2599f9c9049854ca8c0dfbdea0e21912
- kind: tar
  url: https://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.xz
  directory: mpfr
  ref: 1d3be708604eae0e42d578ba93b390c2a145f17743a744d8f3f8c2ad5855a38a
- kind: tar
  url: https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz
  directory: mpc
  ref: 6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e

build-depends:
- freedesktop-sdk.bst:components/tar.bst

depends:
- boards/common/arm-none-eabi-binutils.bst

variables:
  conf-cmd: ../configure
  conf-local: >-
    --with-newlib
    --target=arm-none-eabi
    --disable-bootstrap
    --enable-languages=c
    --disable-libssp
    --disable-gomp
    --enable-threads
    --disable-shared
    --disable-nls

config:
  configure-commands:
  - |
    mkdir build
    cd build
    %{configure}

  build-commands:
  - |
    cd build
    %{make}

  install-commands:
  - |
    cd build
    %{make-install}

  - rm "%{install-root}%{bindir}/arm-none-eabi-gcc"
  - ln -s arm-none-eabi-gcc-9.2.0 "%{install-root}%{bindir}/arm-none-eabi-gcc"
  - rm -rf "%{install-root}%{infodir}"
  - rm -rf "%{install-root}%{mandir}"
