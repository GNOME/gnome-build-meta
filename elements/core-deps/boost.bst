kind: manual
sources:
- kind: tar
  url: https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
  ref: 5721818253e6a0989583192f96782c4a98eb6204965316df9f5ad75819225ca9
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  configure-commands:
  - ./bootstrap.sh --includedir=%{install-root}%{includedir} --libdir=%{install-root}%{libdir}
  build-commands:
  - ./b2 -q -j${JOBS} --build-dir=_build link=shared stage
  install-commands:
  - ./b2 -q --build-dir=_build link=shared install
environment:
  JOBS: '%{max-jobs}'
environment-nocache:
- JOBS
