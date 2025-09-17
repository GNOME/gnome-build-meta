kind: filter

build-depends:
- gnomeos-deps/nvidia-drivers.bst

config:
  include:
  - libs
  include-orphans: false

public:
  initial-script:
    script: |
      #!/bin/bash
      set -eu
      sysroot="${1}"
      chmod 4755 "${sysroot}%{bindir}/nvidia-modprobe"
