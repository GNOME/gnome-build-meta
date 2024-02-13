kind: make

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst

config:
  configure-commands:
  - |
    %{make} O=build-dir sg2042_defconfig

  build-commands:
  - |
    %{make} O=build-dir CROSS_COMPILE= EXTRA_CFLAGS="-fno-stack-protector"

  install-commands:
  - |
    install -Dm644 -t "%{install-root}" build-dir/zsbl.bin

sources:
- kind: git_repo
  url: github:sophgo/zsbl.git
  track: refs/heads/master
  ref: cc806273e0f679bef2f6b017c68adede1594ad31
