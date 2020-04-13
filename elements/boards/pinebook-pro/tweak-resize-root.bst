kind: manual

# U-Boot does not provide EFI variables after boot has been completed.
# So udev is not capable of finding the ESP, and it needs the active
# ESP to be in the same partition table as the root partition.

sources:
- kind: local
  path: files/vm/resize-root/resize-root.service
- kind: local
  path: files/vm/resize-root/resize-root.preset

depends:
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  build-commands:
  - |
    sed -i 's,/dev/gpt-auto-root,/dev/disk/by-label/root,' resize-root.service

  install-commands:
  - |
    unitdir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${unitdir}" resize-root.service

  - |
    presetdir="$(pkg-config --variable=systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${presetdir}" resize-root.preset
