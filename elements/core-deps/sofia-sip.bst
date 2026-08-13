kind: autotools

sources:
- kind: git_repo
  url: github:freeswitch/sofia-sip.git
  track: 'v*'
  ref: v1.13.18-0-gad36ac8f755308e8b87f98a505e83d4e408e5cc3

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
