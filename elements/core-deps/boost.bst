kind: manual

sources:
- kind: tar
  url: https://dl.bintray.com/boostorg/release/1.75.0/source/boost_1_75_0.tar.bz2

  ref: 953db31e016db7bb207f11432bef7df100516eeb746843fa0486a222e3fd49cb
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  optimize-debug: 'false'
  local_flags: -fcommon

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
