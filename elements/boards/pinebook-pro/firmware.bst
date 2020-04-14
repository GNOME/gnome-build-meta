kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  inst-dir: "%{install-root}%{indep-libdir}/firmware"
config:
  install-commands:
  - install -Dm644 -t "%{inst-dir}/brcm" part-1/brcm/*
  - install -Dm644 -t "%{inst-dir}/brcm" part-2/BCM4345C5.hcd

sources:
- kind: git_tag
  url: https://gitlab.manjaro.org/tsys/pinebook-firmware.git
  track-tags: false
  track: bdab4581e1753f7f2f881b4f5b294ee145300406
  directory: part-1
- kind: git_tag
  url: https://gitlab.manjaro.org/manjaro-arm/packages/community/ap6256-firmware.git
  track-tags: false
  track: a30bf312b268eab42d38fab0cc3ed3177895ff5d
  directory: part-2
