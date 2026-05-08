kind: autotools

sources:
- kind: git_repo
  url: gitlab:iucode-tool/iucode-tool.git
  track: v*.*.*
  ref: v2.3.1-0-g9ab8dcb833945ffa71d8bfc034b27ef7d858b3dc

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
