kind: import

depends:
- freedesktop-sdk.bst:components/btrfs-progs.bst

sources:
- kind: local
  path: files/vm/secure-dracut-modules

config:
  target: '%{indep-libdir}/dracut/modules.d'
