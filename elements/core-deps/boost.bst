config:
  build-commands:
  - ./b2 -q -j%{max-jobs} --build-dir=_build link=shared stage
  configure-commands:
  - ./bootstrap.sh --includedir=%{install-root}%{includedir} --libdir=%{install-root}%{libdir}
  install-commands:
  - ./b2 -q --build-dir=_build link=shared install
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: manual
sources:
- kind: tar
  ref: 5721818253e6a0989583192f96782c4a98eb6204965316df9f5ad75819225ca9
  url: https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
