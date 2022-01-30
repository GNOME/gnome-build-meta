kind: manual

sources:
- kind: git_tag
  url: github:ayufan-rock64/pinebook-pro-keyboard-updater.git
  track: 089ddceaca34cc835d8114900c24db6dcdf121c3

depends:
- freedesktop-sdk.bst:components/libusb.bst

build-depends:
- boards/pinebook-pro/vim.bst # Required for xxd

config:
  build-commands:
  - make

  install-commands:
  - install -Dm755 updater "%{install-root}%{bindir}/pinebook-pro-keyboard-updater"
