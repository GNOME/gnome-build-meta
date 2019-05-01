kind: compose

depends:
- filename: vm/base-filesystem.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/util-linux.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/man-db-generate.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: split-locales.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: split-docs.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/tzdata.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/bsp-generic.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/initramfs/initramfs-gz.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/linux-vm-boot/shadow.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/systemd-firstboot-integration.bst
  junction: freedesktop-sdk.bst
  type: build

# And add GNOME core on top !
- filename: sdk.bst
  type: build
- filename: core.bst
  type: build

# Hmm lets create a huge image for now, I don't trust the splits
# config:
#  include:
#  - runtime

public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
