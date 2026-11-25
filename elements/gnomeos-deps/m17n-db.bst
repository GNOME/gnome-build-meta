kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-db.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-19-0-gea13b5a7b3e5e66f98814435fedf74cc3723f247

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
