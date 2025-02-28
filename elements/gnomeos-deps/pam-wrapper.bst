kind: cmake

sources:
- kind: tar
  url: samba:cwrap/pam_wrapper-1.1.5.tar.gz
  ref: bbc47d9990eef7b33db55d63a9e2cde5d16e8989a17c6456b8ca2a582d72f889

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst
- freedesktop-sdk.bst:components/python3.bst
