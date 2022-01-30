kind: stack

depends:
- core/meta-gnome-core-mobile.bst

- vm/common-deps.bst
- vm/os-release-user.bst

- boards/pinephone-pro/initramfs.bst

- world/phosh.bst
