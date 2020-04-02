kind: filter
depends:
- filename: raspi/bsp/linux.bst
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
