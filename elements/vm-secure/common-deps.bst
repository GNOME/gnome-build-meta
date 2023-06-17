kind: stack

depends:
- vm/common-deps.bst

- vm-secure/repart-config.bst
- vm-secure/kernel-modules-only.bst
- vm-secure/sysupdate-config.bst
- vm-secure/sysupdate-user-config.bst
- vm-secure/sysupdate-devel-config.bst
- vm-secure/firstboot-no-prompt.bst
- vm-secure/ld-config.bst
- vm-secure/preset-all.bst
- freedesktop-sdk.bst:vm/minimal-secure/enable-sysupdate.bst
- vm-secure/import-deployment-pub-key.bst
