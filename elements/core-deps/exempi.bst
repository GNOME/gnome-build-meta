kind: autotools

sources:
- kind: git_repo
  url: freedesktop:libopenraw/exempi.git
  track: '*.*.*'
  ref: 2.6.6-0-gf9e868388ce7740ce27409f8629da3e9666cc04f

build-depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-unittest
