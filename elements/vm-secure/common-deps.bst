kind: stack

depends:
- vm/common-deps.bst

- vm-secure/repart-config.bst
- vm-secure/kernel-modules-only.bst
- vm-secure/sysupdate-config.bst
- vm-secure/ld-config.bst
- vm-secure/preset-all.bst
- freedesktop-sdk.bst:vm/minimal-secure/enable-sysupdate.bst
- vm-secure/import-deployment-pub-key.bst
