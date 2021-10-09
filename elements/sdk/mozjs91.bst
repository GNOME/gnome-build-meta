kind: manual

build-depends:
- freedesktop-sdk.bst:components/autoconf2.13.bst # 1999 called, LOL
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:components/icu.bst

environment-nocache:
- MAXJOBS

environment:
  MACH_USE_SYSTEM_PYTHON: 1
  MAXJOBS: '%{max-jobs}'
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
  CC: gcc
  CXX: g++

variables:
  optimize-debug: "false"

config:
  configure-commands:
  - |
    cat >mozconfig <<EOF
    ac_add_options --prefix="%{prefix}"
    ac_add_options --libdir="%{libdir}"
    ac_add_options --host="%{triplet}"
    ac_add_options --target="%{triplet}"
    ac_add_options --enable-application=js
    ac_add_options --enable-release
    ac_add_options --with-system-zlib
    ac_add_options --with-system-icu
    ac_add_options --enable-readline
    ac_add_options --disable-jemalloc
    mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/build-dir
    EOF

  - |
    ./mach configure

  build-commands:
  - |
    ./mach build -j${MAXJOBS} --verbose

  install-commands:
  - |
    cd build-dir && make -j1 install DESTDIR="%{install-root}"

  - rm -rf "%{install-root}%{bindir}"
  - rm "%{install-root}%{libdir}/libjs_static.ajs"

sources:
- kind: tar
  url: https://ftp.mozilla.org/pub/firefox/releases/91.2.0esr/source/firefox-91.2.0esr.source.tar.xz
  base-dir: 'firefox-91.2.0'
  ref: 8b55a8b8254ddde03db83f44c9fecfc4ae86ea126b5445a0355d915830bd7410
