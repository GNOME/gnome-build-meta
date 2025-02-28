kind: autotools

sources:
- kind: tar
  url: github_files:freeswitch/sofia-sip/archive/refs/tags/v1.13.4.tar.gz
  ref: 3f3f7b7b26cc150dae7e1cae95a0fe2c65905311fe143145b4bcda8f97d7ed4e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
