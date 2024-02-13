kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    install -Dm644 -t "%{install-root}" firmware/fip.bin

sources:
- kind: git_repo
  url: github:sophgo/bootloader-riscv.git
  track: refs/heads/master
  ref: sg2042_bringup_v1-128-g01dc52ce10e7cf489c93e4f24b6bfe1bf6e55919
