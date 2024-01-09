kind: manual

sources:
- kind: tar
  url: sourceforge:boost/1.84.0/boost_1_84_0.tar.bz2
  ref: cc4b893acf645c9d4b698e9a0f08ca8846aa5d6c68275c14c3e7949c24109454

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
