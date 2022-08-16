kind: stack

depends:
- vm/common-deps.bst
- vm/initramfs.bst
- vm/os-release-user.bst
- core-deps/feedbackd.bst
- core/calls.bst
- freedesktop-sdk.bst:components/iputils.bst
- custom/atinout.bst
- custom/iw.bst
