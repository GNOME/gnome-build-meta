kind: stack

runtime-depends:
- sdk.bst
- core/meta-gnome-core-developer-tools.bst
- vm/common-deps.bst
- vm/initramfs.bst
- vm/buildstream/buildstream.bst
- vm/buildstream/bst-external.bst
- vm/git-lfs.bst
- freedesktop-sdk.bst:components/podman.bst
