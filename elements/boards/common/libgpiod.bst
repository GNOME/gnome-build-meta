kind: autotools

sources:
- kind: git_repo
  url: https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git
  track: v1.6.3
  ref: v1.6.3-0-gbb4e5ce7071feed41bd3f0d9a62b5033fd483a18

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-local: --enable-tools=yes
