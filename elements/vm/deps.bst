kind: stack

depends:
- vm/common-deps-ostree.bst
- vm/initramfs.bst
- vm/os-release-user.bst
- freedesktop-sdk.bst:components/python3-buildstream2.bst
