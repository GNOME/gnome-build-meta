kind: stack
depends:
- gnomeos/usr/initial-scripts.bst
- gnomeos/snapd/initial-scripts.bst
- gnomeos/devel/initial-scripts.bst
- gnomeos/usr/filesystem.bst
- gnomeos/snapd/layer.bst
- gnomeos/devel/layer.bst
- gnomeos/codecs-extra/layer.bst
# Temporarily disabling because the artifact cache currently fails to push usr-image.
#- gnomeos/signed-boot.bst
#- gnomeos/usr/image.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - gnomeos/nvidia-modules/layer.bst
      - gnomeos/nvidia-runtime/layer.bst
