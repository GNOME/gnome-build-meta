kind: ostree

build-depends:
- freedesktop-sdk.bst:components/ostree.bst
- vm/initial-scripts-devel.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- filename: vm/filesystem-devel.bst
  config:
    sysroot: true

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-layer: devel

config:
  ostree-branch: '%{ostree-branch}'
  initial-commands:
  - |
    prepare-image.sh \
       --sysroot %{sysroot} \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - mv %{sysroot}/etc %{sysroot}/usr/etc
