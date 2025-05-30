kind: make
description: atinout is a low level application for communicating with modems over serial.

sources:
- kind: tar
  url: sourceforge:atinout/v0.9.1/atinout-0.9.1.tar.gz
  ref: 4d15c8288aca414e11cd304686b172696104c5e42bf776300311c005634854a2
- kind: patch_queue
  path: patches/atinout

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
