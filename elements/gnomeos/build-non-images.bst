kind: stack
depends:
- gnomeos/codecs-extra/layer.bst
- gnomeos/debug/layer.bst
- gnomeos/devel/layer.bst
- gnomeos/snapd/layer.bst
- gnomeos/usr/layer.bst
# Temporarily disabling because the artifact cache currently fails to push usr-image.
#- gnomeos/signed-boot.bst
#- gnomeos/usr/image.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - gnomeos/nvidia-modules/layer.bst
      - gnomeos/nvidia-runtime/layer.bst
