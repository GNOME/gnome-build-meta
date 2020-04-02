kind: script

build-depends:
- raspi/filesystem.bst
- raspi/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: 060b57a8-62bd-4d48-a471-0d28466d1fbb

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
       --rootpasswd "root" >/dev/null \
       --noboot
