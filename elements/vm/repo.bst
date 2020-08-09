kind: ostree

build-depends:
- core-deps/libostree.bst
- vm/filesystem.bst
- vm/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d

config:
  environment:
  - core-deps/libostree.bst
  - vm/prepare-image.bst
  - vm/initial-scripts.bst
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
