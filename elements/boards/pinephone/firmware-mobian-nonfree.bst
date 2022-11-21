kind: manual

sources:
- kind: git
  url: gitlab:mobian1/devices/firmware-mobian-nonfree.git
  track: mobian
  ref: 27d5895829a055a099ba5a022010f9a341207d71

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    xz --check=crc32 firmware/*.bin
    xz --check=crc32 firmware/rtl_bt/*
    xz --check=crc32 firmware/brcm/*
  - cp -r firmware '%{install-root}'
