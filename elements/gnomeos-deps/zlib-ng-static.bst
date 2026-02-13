kind: autotools

sources:
- kind: git_repo
  url: github:zlib-ng/zlib-ng.git
  track: "*.*.*"
  exclude:
  - "*rc*"
  ref: 2.3.3-0-g12731092979c6d07f42da27da673a9f6c7b13586

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-args: >-
    --static
    --prefix=%{prefix}
    --libdir=%{libdir}
    --zlib-compat
    --without-new-strategies

config:
  install-commands:
    (>):
    - |
      rm -rf '%{install-root}%{includedir}'
      rm -rf '%{install-root}%{libdir}/pkgconfig'
