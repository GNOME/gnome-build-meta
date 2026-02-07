kind: stack

# this should contain all layers

depends:
- gnomeos/devel/deps.bst
- gnomeos/snapd/deps.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - gnomeos/nvidia-runtime/deps.bst
