kind: make

sources:
- kind: tar
  url: dotat:unifdef/unifdef-2.12.tar.gz
  ref: fba564a24db7b97ebe9329713ac970627b902e5e9e8b14e19e024eb6e278d10b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -std=c17 -D_POSIX_C_SOURCE=200809L
  make-args: >-
    prefix="%{prefix}"
