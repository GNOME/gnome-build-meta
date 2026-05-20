kind: manual

sources:
- kind: git_repo
  url: github:intel/Intel-Linux-Processor-Microcode-Data-Files.git
  track: microcode-*
  ref: microcode-20260512-0-g98f8d817ca3d560c48ae988bd805d1b53b48a631

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
