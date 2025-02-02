kind: stack

depends:
- gnomeos/initramfs.bst
- boards/pinephone-pro/pinephone-pro-alsa-ucm.bst
- boards/common/mobile-dependencies.bst
- freedesktop-sdk.bst:components/linux.bst
