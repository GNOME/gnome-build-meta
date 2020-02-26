kind: compose

build-depends:
- iso/deps.bst
- iso/installer-remove-gdm-service.bst

config:
  exclude:
  - devel
  - debug
