kind: ostree

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- freedesktop-sdk.bst:components/ostree.bst
- boards/pinephone-pro/initial-scripts.bst
- filename: boards/pinephone-pro/filesystem.bst
  config:
    sysroot: true

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  sysroot: '%{build-root}/sysroot'
  ostree-branch: gnome-os/aarch64/pinephone-pro

config:
  ostree-branch: '%{ostree-branch}'
  initial-commands:
  - |
    prepare-image.sh \
       --sysroot %{sysroot} \
       --seed "%{uuidnamespace}" \
       --rootpasswd root \
       --rootsource LABEL=root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - mv %{sysroot}/etc %{sysroot}/usr/etc
