kind: filter

build-depends:
- gnomeos-deps/nvidia-drivers.bst

config:
  include:
  - libs
  - license
  include-orphans: false

public:
  initial-script:
    script: |
      #!/bin/bash
      set -eu
      sysroot="${1}"
      chmod 4755 "${sysroot}%{bindir}/nvidia-modprobe"
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/nvidia-drivers"
    - "%{project_licensedir}/nvidia-drivers/**"
