kind: manual
sources:
- kind: tar
  url: https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  configure-commands:
    - ./bootstrap.sh --includedir=%{install-root}%{includedir} --libdir=%{install-root}%{libdir}
  build-commands:
    - ./b2 -q -j%{max-jobs} --build-dir=_build link=shared stage
  install-commands:
    - ./b2 -q --build-dir=_build link=shared install
