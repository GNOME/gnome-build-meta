kind: autotools

sources:
- kind: tar
  url: https://salsa.debian.org/debian/anthy/-/archive/upstream/0.4/anthy-upstream-0.4.tar.bz2
  ref: f9d5c80d657fcf05f1bcd45b2372df59e28c582b57f32caa0bebf0fccd52061f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=implicit-function-declaration
