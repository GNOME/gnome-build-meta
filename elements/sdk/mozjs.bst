kind: manual

sources:
- kind: tar
  url: mozilla:firefox/releases/115.9.1esr/source/firefox-115.9.1esr.source.tar.xz
  base-dir: 'firefox-115.9.1'
  ref: 23657808bfefb8ba33a191645d4df776d5b8d99d453edde32b785d2a8846f929

build-depends:
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  optimize-debug: "false"

environment:
  MACH_USE_SYSTEM_PYTHON: '1'
  MAXJOBS: '%{max-jobs}'
  CC: clang
  CXX: clang++

environment-nocache:
- MAXJOBS

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
    ac_add_options --enable-debug-symbols
    ac_add_options --with-intl-api
    ac_add_options --with-system-zlib
    ac_add_options --with-system-icu
    ac_add_options --enable-readline
    ac_add_options --disable-jemalloc
    mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/build-dir
    EOF

  - ./mach configure

  build-commands:
  - ./mach build -j${MAXJOBS} --verbose

  install-commands:
  - make -C build-dir -j1 install DESTDIR="%{install-root}"
  - rm -rf "%{install-root}%{bindir}"
  - rm "%{install-root}%{libdir}/libjs_static.ajs"
