kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-db.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-11-0-g486a5537315d4e0f58e65b691947222b53689dd2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
