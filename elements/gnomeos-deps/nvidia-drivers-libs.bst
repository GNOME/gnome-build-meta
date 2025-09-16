kind: filter

build-depends:
- gnomeos-deps/nvidia-drivers.bst

config:
  include:
  - libs
  - license
  include-orphans: false

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/nvidia-drivers"
    - "%{project_licensedir}/nvidia-drivers/**"
