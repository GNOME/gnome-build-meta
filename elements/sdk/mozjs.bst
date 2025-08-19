kind: manual

sources:
- kind: tar
  url: mozilla:firefox/releases/140.1.0esr/source/firefox-140.1.0esr.source.tar.xz
  base-dir: 'firefox-140.1.0'
  ref: d15c65d790e0c371b5c95332141b1bdeb29fefc27f852d22a5f542b6d1bc1922
- kind: patch
  path: patches/mozjs/bmo1973993-fix-installed-headers.patch
- kind: patch
  path: patches/mozjs/bmo1973994-fix-os-dependent-headers.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/rust-cbindgen.bst

depends:
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  optimize-debug: "false"

environment:
  MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE: 'system'
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
  - "%{install-extra}"
