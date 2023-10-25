kind: stack
depends:
- vm-secure/make-layer.bst
- vm-secure/initial-scripts.bst
- vm-secure/initial-scripts-snapd.bst
- vm-secure/initial-scripts-devel.bst
- vm-secure/filesystem.bst
- vm-secure/filesystem-snapd.bst
- vm-secure/filesystem-devel.bst
- vm-secure/signed-boot.bst
- vm-secure/usr-image.bst
