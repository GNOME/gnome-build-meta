kind: compose

build-depends:
- gnomeos/nvidia-runtime/deps.bst
- gnomeos/nvidia-runtime/manifest.bst

config:
  exclude:
  - debug
  - devel
  - doc
