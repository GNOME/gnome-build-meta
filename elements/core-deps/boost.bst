kind: manual
sources:
- kind: tar
  url: downloads.sourceforge.net:boost/boost/1.72.0/boost_1_72_0.tar.bz2
  ref: 59c9b274bc451cf91a9ba1dd2c7fdcaf5d60b1b3aa83f2c9fa143417cc660722
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
