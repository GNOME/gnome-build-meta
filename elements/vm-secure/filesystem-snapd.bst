kind: compose

build-depends:
- vm-secure/deps-snapd.bst
- vm-secure/manifest-snapd.bst

config:
  exclude:
  - debug
  - devel
  - doc
