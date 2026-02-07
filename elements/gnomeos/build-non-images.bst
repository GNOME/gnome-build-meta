kind: stack
depends:
- gnomeos/make-layer.bst
- gnomeos/usr/initial-scripts.bst
- gnomeos/snapd/initial-scripts.bst
- gnomeos/devel/initial-scripts.bst
- gnomeos/usr/filesystem.bst
- gnomeos/snapd/filesystem.bst
- gnomeos/devel/filesystem.bst
- gnomeos/codecs-extra/filesystem.bst
# Temporarily disabling because the artifact cache currently fails to push usr-image.
#- gnomeos/signed-boot.bst
#- gnomeos/usr/image.bst
