kind: autotools

sources:
- kind: git_repo
  url: github:freeswitch/sofia-sip.git
  track: 'v*'
  ref: v1.13.19-0-g6dce59d35535e6dd3945c7b0f76dbf1ba884202d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
