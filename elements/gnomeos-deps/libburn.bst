kind: autotools

sources:
- kind: tar
  url: libburnia:libburn-1.5.6.tar.gz
  ref: 7295491b4be5eeac5e7a3fb2067e236e2955ffdc6bbd45f546466edee321644b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -Wno-error=incompatible-pointer-types
