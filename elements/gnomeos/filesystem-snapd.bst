kind: compose

build-depends:
- gnomeos/deps-snapd.bst
- gnomeos/manifest-snapd.bst

config:
  exclude:
  - debug
  - devel
  - doc
