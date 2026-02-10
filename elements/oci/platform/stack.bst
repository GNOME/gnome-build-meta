kind: stack

depends:
- sdk-platform.bst
- sdk/os-release.bst
- oci/integration/extrafs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

