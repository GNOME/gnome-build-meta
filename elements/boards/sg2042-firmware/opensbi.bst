kind: make

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  make-args: >-
    O=build-generic
    PLATFORM=generic
    FW_PIC=y
    FW_JUMP=y
    BUILD_INFO=y
    DEBUG=1
    FW_TEXT_START=0x0
    FW_JUMP_ADDR=0x00200000

config:
  build-commands:
  - |
    %{make} ${MAKEFLAGS}

  install-commands:
  - |
    install -Dm644 -t "%{install-root}/riscv64" build-generic/platform/generic/firmware/fw_{dynamic,jump}.{bin,elf}

public:
  bst:
    split-rules:
      debug:
        (>):
        - 'riscv64/*.elf'

sources:
- kind: git_repo
  url: github:sophgo/opensbi.git
  track: refs/heads/sg2042-dev
  ref: v1.2-117-g3745939ceb8ba71f45c4cfad205912cedbc76bd9
