kind: script

build-depends:
- core-deps/libostree.bst
- vm/filesystem-devel.bst
- vm/initial-scripts-devel.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-layer: devel

environment:
  OSTREE_REPO: "%{install-root}"

config:
  layout:
  - element: ''
    destination: /tmp
  - element: core-deps/libostree.bst
    destination: /
  - element: vm/filesystem-devel.bst
    destination: /sysroot
  - element: vm/initial-scripts-devel.bst
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
       --efipath /boot >/dev/null

  - mkdir -p "${OSTREE_REPO}"
  - ostree init --repo="${OSTREE_REPO}" --mode=archive
  - mv /sysroot/etc /sysroot/usr/etc
  - ostree commit --fsync=false --branch=%{ostree-branch} --timestamp="$(date --date="@${SOURCE_DATE_EPOCH}" --rfc-3339=seconds)" /sysroot
