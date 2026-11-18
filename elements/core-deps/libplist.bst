kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libplist.git
  track: '*.*.*'
  ref: 2.8.1-0-g678b1a34693b86ae1787fa470dcb7203ffd0ef3f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --without-cython

public:
  cpe:
    vendor: 'libimobiledevice'
    product: 'libplist'
