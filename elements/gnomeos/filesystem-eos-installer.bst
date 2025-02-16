kind: compose

build-depends:
- gnomeos/deps-eos-installer.bst
- gnomeos/manifest-eos-installer.bst

config:
  exclude:
  - debug
  - devel
  - doc
