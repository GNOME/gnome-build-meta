kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-db.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-13-0-gfbcacb98af07cb882071c70226067e93370cc067

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
