kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-db.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-14-0-gdae75ce5751fd556bb918e902992559086cec78d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
