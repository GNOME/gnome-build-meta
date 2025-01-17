kind: compose

build-depends:
- gnomeos/deps-nvidia-runtime.bst
- gnomeos/manifest-nvidia-runtime.bst

config:
  exclude:
  - debug
  - devel
  - doc
