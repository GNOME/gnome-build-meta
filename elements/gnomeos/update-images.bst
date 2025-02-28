kind: script

build-depends:
- filename: gnomeos/update-images-user-only.bst
  strict: true
  config:
    location: /user-only
- filename: gnomeos/devel-layer-signature.bst
  strict: true
  config:
    location: /devel-only
- filename: gnomeos/snapd-layer-signature.bst
  strict: true
  config:
    location: /snapd-only
- filename: gnomeos/debug-layer-signature.bst
  strict: true
  config:
    location: /debug-only
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

(?):
- arch in ["x86_64"]:
    build-depends:
      (>):
      - filename: gnomeos/nvidia-modules-layer-signature.bst
        strict: true
        config:
          location: /nvidia-modules-only
      - filename: gnomeos/nvidia-runtime-layer-signature.bst
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
    cd "%{install-root}"
    sha256sum *.xz *.*hash | tee SHA256SUMS
