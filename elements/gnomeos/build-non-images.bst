kind: stack
depends:
- gnomeos/make-layer.bst
- gnomeos/codecs-extra/layer.bst
- gnomeos/devel/layer.bst
- gnomeos/snapd/layer.bst
- gnomeos/usr/layer.bst
# Temporarily disabling because the artifact cache currently fails to push usr-image.
#- gnomeos/signed-boot.bst
#- gnomeos/usr/image.bst
