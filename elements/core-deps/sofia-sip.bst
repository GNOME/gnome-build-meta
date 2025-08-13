kind: autotools

sources:
- kind: tar
  url: github_files:freeswitch/sofia-sip/archive/refs/tags/v1.13.17.tar.gz
  ref: daca3d961b6aa2974ad5d3be69ed011726c3e4d511b2a0d4cb6d878821a2de7a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
