kind: make

sources:
- kind: git_repo
  url: github:fanf2/unifdef.git
  track: 'unifdef-*.*'
  ref: unifdef-2.12-0-g99d17074b9ba66cc9da2ce60fb29c6b1beb0370a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -std=c17 -D_POSIX_C_SOURCE=200809L
  make-args: >-
    prefix="%{prefix}"
