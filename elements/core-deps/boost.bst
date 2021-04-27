kind: manual

sources:
- kind: tar
  url: https://dl.bintray.com/boostorg/release/1.76.0/source/boost_1_76_0.tar.bz2

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
