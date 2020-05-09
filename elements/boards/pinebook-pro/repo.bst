kind: script

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- freedesktop-sdk.bst:components/ostree.bst
- boards/pinebook-pro/initial-scripts.bst
- boards/pinebook-pro/filesystem.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-branch: gnome-os/aarch64/pinebook-pro

environment:
  OSTREE_REPO: "%{install-root}"

config:
  layout:
  - element: ''
    destination: /tmp
  - element: components/ostree.bst
    destination: /
  - element: boards/pinebook-pro/filesystem.bst
    destination: /sysroot
  - element: boards/pinebook-pro/initial-scripts.bst
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
  - ostree commit --branch=%{ostree-branch} --timestamp="$(date --date="@${SOURCE_DATE_EPOCH}" --rfc-3339=seconds)" /sysroot

