kind: stack
depends:
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-snapd.bst
- gnomeos/initial-scripts-devel.bst
- gnomeos/filesystem.bst
- gnomeos/filesystem-snapd.bst
- gnomeos/filesystem-devel.bst
# Temporarily disabling because the artifact cache currently fails to push usr-image.
#- gnomeos/signed-boot.bst
#- gnomeos/usr-image.bst
