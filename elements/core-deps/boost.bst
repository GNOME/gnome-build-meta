kind: manual

sources:
- kind: tar
  url: https://boostorg.jfrog.io/artifactory/main/release/1.73.0/source/boost_1_73_0.tar.bz2
  ref: 4eb3b8d442b426dc35346235c8733b5ae35ba431690e38c6a8263dce9fcbb402
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
