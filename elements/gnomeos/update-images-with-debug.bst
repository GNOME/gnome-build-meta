kind: script

build-depends:
- filename: gnomeos/update-images.bst
  strict: true
  config:
    location: "%{install-root}"
- filename: gnomeos/debug/image.bst
  strict: true
  config:
    location: "%{install-root}"
- filename: gnomeos/debug/layer-tar.bst
  config:
    location: "%{install-root}"
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

config:
  commands:
  - |
    cd "%{install-root}"
    rm SHA256SUMS
    sha256sum * | tee SHA256SUMS
