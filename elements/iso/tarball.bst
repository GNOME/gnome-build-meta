kind: script

build-depends:
- iso/iso-build-deps.bst
- iso/signed-image-only.bst
- iso/filesystem.bst
- iso/initial-scripts.bst
- iso/initramfs.bst

variables:
  install-root: /build/install-root
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d

config:
  layout:
  - element: ''
    destination: /tmp
  - element: ''
    destination: /build
  - element: iso/iso-build-deps.bst
    destination: /
  - element: iso/filesystem.bst
    destination: /sysroot
  - element: iso/initramfs.bst
    destination: /sysroot/efi
  - element: iso/initial-scripts.bst
    destination: /
  - element: iso/signed-image-only.bst
    destination: /sysroot/eosimages

  commands:
  - mkdir -p /build/images
  - mkdir -p /build/install-root
  - mkdir -p /build/stage-1
  - mkdir -p /build/stage-2
  - mkdir -p /build/sysroot-stage-2

  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL="%{installer-volume-id}" \
       --rootfstype iso9660 \
       --noboot >/dev/null

  - |
    cd /sysroot
    tar czvf %{install-root}/rootfs.tar.gz .

