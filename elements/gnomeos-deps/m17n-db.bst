kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-db.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-10-0-g8bc612e2fbcac7f65c7caa95246f8cf594eb68c8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
