kind: filter
depends:
- filename: boards/raspberrypi-4/bsp/linux.bst
  type: build

config:
  exclude:
  - boot
  include-orphans: True

public:
  bst:
    overlap-whitelist:
    # FIX
    - '**'
