kind: script

build-depends:
- filename: vm-secure/update-images-user-only.bst
  config:
    location: /user-only
- filename: vm-secure/devel-layer-signature.bst
  config:
    location: /devel-only
- filename: vm-secure/snapd-layer-signature.bst
  config:
    location: /snapd-only
- filename: vm-secure/debug-layer-signature.bst
  config:
    location: /debug-only
- filename: vm-secure/debug-layer-tar.bst
  config:
    location: /debug-tar-only
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  commands:
  - |
    cp /user-only/*.xz '%{install-root}'

  - |
    cp /devel-only/*.xz '%{install-root}'

  - |
    cp /snapd-only/*.xz '%{install-root}'

  - |
    cp /debug-only/*.xz '%{install-root}'

  - |
    cp /debug-tar-only/*.xz '%{install-root}'

  - |
    cd "%{install-root}"
    sha256sum *.xz *.*hash | tee SHA256SUMS
