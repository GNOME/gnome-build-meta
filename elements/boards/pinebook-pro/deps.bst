kind: stack

depends:
- vm/common-deps.bst
- vm/os-release-user.bst

- boards/pinebook-pro/initramfs.bst
- boards/pinebook-pro/keyboard-updater.bst
- boards/pinebook-pro/disable-suspend.bst
