kind: filter

build-depends:
- boards/raspberrypi-4/bsp/linux.bst

config:
  exclude:
  - boot
  include-orphans: True
