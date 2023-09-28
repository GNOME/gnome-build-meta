kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/tar.bst
- filename: vm-secure/filesystem-debug.bst
  config:
    location: '/sysroot-debug'

config:
  commands:
  - |
    tar Jcf '%{install-root}/debug.tar.xz' -C /sysroot-debug .
