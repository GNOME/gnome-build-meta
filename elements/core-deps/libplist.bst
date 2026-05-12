kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libplist.git
  track: '*.*.*'
  ref: 2.7.0-0-gcf5897a71ea412ea2aeb1e2f6b5ea74d4fabfd8c

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
