kind: compose

build-depends:
- vm-secure/deps-nvidia-runtime.bst
- vm-secure/manifest-nvidia-runtime.bst

config:
  exclude:
  - debug
  - devel
  - doc
