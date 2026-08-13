kind: manual

sources:
- kind: git_repo
  url: github:intel/Intel-Linux-Processor-Microcode-Data-Files.git
  track: microcode-*
  ref: microcode-20260812-0-g927e65c8d5a6e4ec05cc74b1778283ab2284d0c1

build-depends:
- gnomeos-deps/iucode-tool.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    iucode_tool intel-ucode/ -w GenuineIntel.bin

  install-commands:
  - |
    install -Dm644 -t '%{install-root}/usr/lib/firmware/intel-ucode' GenuineIntel.bin
  - |
    %{install-extra}
