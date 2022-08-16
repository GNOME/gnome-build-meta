# libgpiod-dev
kind: autotools
sources:
- kind: git
  url: https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git
  track: v1.6.3
  ref: dfc5d361e6748d5f48b706e5c4ac949d133b5470
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
#depends:

variables:
  conf-local: --enable-tools=yes

