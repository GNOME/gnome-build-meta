kind: script

build-depends:
- filename: vm-secure/update-images-user-only.bst
  config:
    location: /user-only
- filename: vm-secure/devel-layer-signature.bst
  config:
    location: /devel-only
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  commands:
  - |
    cp /user-only/*.xz '%{install-root}'

  - |
    cp /devel-only/*.{xz,usrhash} '%{install-root}'

  - |
    cd "%{install-root}"
    sha256sum *.xz *.*hash | tee SHA256SUMS
