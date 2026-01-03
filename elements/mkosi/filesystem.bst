kind: compose

build-depends:
- gnomeos-deps/deps.bst
- freedesktop-sdk.bst:components/linux.bst
- mkosi/os-release.bst

(?):
- arch in ["x86_64"]:
    build-depends:
      (>):
      - gnomeos-deps/intel-ucode.bst
      - gnomeos/initramfs/signed-nvidia-modules.bst

config:
  exclude:
  - debug
  - devel
  - doc
