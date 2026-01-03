kind: compose

build-depends:
- gnomeos-deps/deps.bst
#- gnomeos/manifest.bst
- gnomeos/os-release.bst
- gnomeos/sysupdate-config.bst
- freedesktop-sdk.bst:components/linux.bst

config:
  exclude:
  - debug
  - devel
  - doc
