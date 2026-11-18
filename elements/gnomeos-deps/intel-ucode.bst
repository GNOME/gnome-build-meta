kind: manual

sources:
- kind: git_repo
  url: github:intel/Intel-Linux-Processor-Microcode-Data-Files.git
  track: microcode-*
  ref: microcode-20261110-0-gd71fe4e2f0f70a49ebbac7f2c7e915f181361974

build-depends:
- gnomeos-deps/iucode-tool.bst

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
