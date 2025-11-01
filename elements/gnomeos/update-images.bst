kind: script

build-depends:
- filename: gnomeos/update-images-user-only.bst
  strict: true
  config:
    location: "%{install-root}"
- filename: gnomeos/devel-layer.bst
  strict: true
  config:
    location: "%{install-root}"
- filename: gnomeos/snapd-layer.bst
  strict: true
  config:
    location: "%{install-root}"
- filename: gnomeos/debug-layer.bst
  strict: true
  config:
    location: "%{install-root}"
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

(?):
- arch in ["x86_64"]:
    build-depends:
      (>):
      - filename: gnomeos/nvidia-modules-layer.bst
        strict: true
        config:
          location: "%{install-root}"
      - filename: gnomeos/nvidia-runtime-layer.bst
        strict: true
        config:
          location: "%{install-root}"

config:
  commands:
  - |
    cd "%{install-root}"
    rm SHA256SUMS
    sha256sum * | tee SHA256SUMS
