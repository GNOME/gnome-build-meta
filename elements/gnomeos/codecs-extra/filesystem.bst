kind: compose

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst
- gnomeos/codecs-extra/deps.bst

config:
  exclude:
  - debug
  - devel
  - doc
