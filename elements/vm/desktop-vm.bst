kind: compose

depends:
- filename: vm/base-filesystem.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/util-linux.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/tzdata.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/bsp-generic.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/initramfs/initramfs-gz.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/linux-vm-boot/shadow.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/boot-integration.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: vm/mesa-default.bst
  junction: freedesktop-sdk.bst
  type: build

# And add GNOME core on top !
- filename: sdk-platform.bst
  type: build
- filename: core.bst
  type: build
- filename: core/systemd-presets.bst
  type: build

# Currently we just take everything and remove the
# devel stuff (headers and static libraries), and debugging
# symbols which take a huge amount of space, we could
# refine this and make it much more selective, though.
config:
  exclude:
  - devel
  - debug
