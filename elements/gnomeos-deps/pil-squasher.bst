kind: make

sources:
- kind: git_repo
  url: github:linux-msm/pil-squasher.git
  track: master
  ref: 3c9f8b8756ba6e4dbf9958570fd4c9aea7a70cf4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: >-
    prefix='%{prefix}'
