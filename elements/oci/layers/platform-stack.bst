kind: stack

depends:
- sdk-platform.bst
- sdk/os-release.bst
- freedesktop-sdk.bst:integration/extra-fs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

