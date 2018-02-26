kind: compose

public:
  bst:
    split-rules:
      docs:
        - "%{datadir}/runtime/docs/**"
      locale:
        - "%{datadir}/runtime/locale/**"

depends:
- filename: core.bst
  type: build
- junction: base/freedesktop1.8/freedesktop-sdk-junction.bst
  filename: vm/bsp-generic.bst
  type: build
- junction: base/freedesktop1.8/freedesktop-sdk-junction.bst
  filename: vm/initramfs/initramfs-gz.bst
  type: build

config:
  include:
  - runtime
