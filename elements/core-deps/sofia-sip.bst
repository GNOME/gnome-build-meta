kind: autotools

sources:
- kind: git_repo
  url: github:freeswitch/sofia-sip.git
  track: 'v*'
  ref: v1.13.17-0-g6198851a610b7889c17e2d98fb84617bc1dd7aec

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
