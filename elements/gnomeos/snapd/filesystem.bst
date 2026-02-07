kind: compose

build-depends:
- gnomeos/snapd/deps.bst
- gnomeos/snapd/manifest.bst

config:
  exclude:
  - debug
  - devel
  - doc
