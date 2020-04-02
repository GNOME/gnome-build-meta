kind: script

build-depends:
- raspi/filesystem.bst
- raspi/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d

config:
  layout:
  - element: ''
    destination: /tmp
  - element: raspi/filesystem.bst
    destination: /sysroot
  - element: raspi/initial-scripts.bst
    destination: /
  - element: vm/prepare-image.bst
    destination: /

  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --efisource LABEL=EFI \
       --efipath /boot \
       --rootpasswd "root" >/dev/null

  - |
    mkdir -p "%{install-root}/usr/lib/"
    cp -r /usr/lib/modules "%{install-root}/usr/lib/"
