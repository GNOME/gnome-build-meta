kind: make
sources:
- kind: tar
  url: github_files:axboe/liburing/archive/refs/tags/liburing-2.5.tar.gz
  ref: 456f5f882165630f0dc7b75e8fd53bd01a955d5d4720729b4323097e6e9f2a98
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
config:
  configure-commands:
  - >-
    ./configure
    --prefix=%{prefix}
    --mandir=%{mandir}
    --libdir=/%{libdir}
    --libdevdir=/%{libdir}
    --includedir=%{includedir}
    --datadir=%{datadir}
    --use-libc
  install-commands:
    (>):
    - rm "%{install-root}%{libdir}/liburing-ffi.a"
    - rm "%{install-root}%{libdir}/liburing.a"
