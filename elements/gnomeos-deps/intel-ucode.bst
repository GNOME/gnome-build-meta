kind: manual

sources:
- kind: git_repo
  url: github:intel/Intel-Linux-Processor-Microcode-Data-Files.git
  track: microcode-*
  ref: microcode-20260227-0-g250941fb670645d7d91f761cc63656ad3a1ec367

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
