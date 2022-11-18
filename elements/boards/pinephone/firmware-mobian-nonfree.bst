kind: manual

sources:
- kind: git
  url: gitlab:mobian1/devices/firmware-mobian-nonfree.git
  track: mobian
  ref: 6259166a79991d95bdd1e055d9a076623c15243a

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    xz firmware/*.bin
    xz firmware/rtl_bt/*
    xz firmware/brcm/*
