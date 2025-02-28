kind: meson

sources:
- kind: tar
  url: gnome_gitlab_files:jwestman/blueprint-compiler/-/archive/v0.16.0/blueprint-compiler-v0.16.0.tar.gz
  ref: 01feb8263fe7a450b0a9fed0fd54cf88947aaf00f86cc7da345f8b39a0e7bd30

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
