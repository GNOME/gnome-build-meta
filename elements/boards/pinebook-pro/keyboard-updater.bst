kind: manual

sources:
- kind: git_tag
  url: https://github.com/ayufan-rock64/pinebook-pro-keyboard-updater.git
  track: 089ddceaca34cc835d8114900c24db6dcdf121c3

depends:
- core-deps/libusb.bst

config:
  build-commands:
  - make

  install-commands:
  - install -Dm755 updater "%{install-root}%{bindir}/pinebook-pro-keyboard-updater"
