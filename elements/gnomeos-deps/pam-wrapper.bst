kind: cmake

sources:
- kind: git_repo
  url: samba:pam_wrapper.git
  track: 'pam_wrapper-*'
  ref: pam_wrapper-1.1.8-0-gb44cd4497a9fdfe271e1adda11c0d65ba462555c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst
- freedesktop-sdk.bst:components/python3.bst
