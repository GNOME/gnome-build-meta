kind: cmake

sources:
- kind: tar
  url: samba_pub:cwrap/pam_wrapper-1.1.8.tar.gz
  ref: 6549c0b3e41d1ebe0c94a1be63c25eec918191462b602ab6f47d4a5fa709c3e4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst
- freedesktop-sdk.bst:components/python3.bst
