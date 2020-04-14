kind: stack

runtime-depends:
- vm/common-deps.bst

- boards/pinebook-pro/initramfs.bst
- boards/pinebook-pro/keyboard-updater.bst
- boards/pinebook-pro/disable-suspend.bst

- boards/pinebook-pro/firmware.bst
