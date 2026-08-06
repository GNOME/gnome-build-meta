kind: autotools

sources:
- kind: git_repo
  url: inria:mpc/mpc.git
  track: "*.*.*"
  ref: 1.4.1-0-g532a18ae8222f928c58f7ffd1b4f0122062172bd

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
