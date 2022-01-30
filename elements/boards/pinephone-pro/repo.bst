kind: ostree

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- core-deps/libostree.bst
- boards/pinebook-pro/filesystem.bst
- boards/pinebook-pro/initial-scripts.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-branch: gnome-os/aarch64/pinebook-pro

config:
  environment:
  - core-deps/libostree.bst
  - vm/prepare-image.bst
  - boards/pinebook-pro/initial-scripts.bst
  ostree-branch: '%{ostree-branch}'
  initial-commands:
  - |
    prepare-image.sh \
       --sysroot %{sysroot} \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL=root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - mv %{sysroot}/etc %{sysroot}/usr/etc
