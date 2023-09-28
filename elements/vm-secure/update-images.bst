kind: script

build-depends:
- filename: vm-secure/update-images-user-only.bst
  strict: true
  config:
    location: /user-only
- filename: vm-secure/devel-layer-signature.bst
  strict: true
  config:
    location: /devel-only
- filename: vm-secure/snapd-layer-signature.bst
  strict: true
  config:
    location: /snapd-only
- filename: vm-secure/debug-layer-signature.bst
  config:
    location: /debug-only
- filename: vm-secure/debug-layer-tar.bst
  config:
    location: /debug-tar-only
- freedesktop-sdk.bst:bootstrap-import.bst

(?):
- arch in ["x86_64"]:
    build-depends:
      (>):
      - filename: vm-secure/nvidia-modules-layer-signature.bst
        strict: true
        config:
          location: /nvidia-modules-only
      - filename: vm-secure/nvidia-runtime-layer-signature.bst
        strict: true
        config:
          location: /nvidia-runtime-only

config:
  commands:
  - |
    cp /user-only/*.xz '%{install-root}'

  - |
    cp /devel-only/*.xz '%{install-root}'

  - |
    cp /snapd-only/*.xz '%{install-root}'

  - |
    if [ -d /nvidia-modules-only ]; then
      cp /nvidia-modules-only/*.xz '%{install-root}'
    fi

  - |
    if [ -d /nvidia-modules-only ]; then
      cp /nvidia-runtime-only/*.xz '%{install-root}'
    fi

  - |
    cp /debug-only/*.xz '%{install-root}'

  - |
    cp /debug-tar-only/*.xz '%{install-root}'

  - |
    cd "%{install-root}"
    sha256sum *.xz *.*hash | tee SHA256SUMS
