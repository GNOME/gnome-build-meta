kind: autotools

sources:
- kind: tar
  url: https://ftp.gnu.org/gnu/gcc/gcc-9.2.0/gcc-9.2.0.tar.xz
- kind: tar
  url: https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.xz
  directory: gmp
- kind: tar
  url: https://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.xz
  directory: mpfr
- kind: tar
  url: https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz
  directory: mpc

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
