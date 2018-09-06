kind: autotools
sources:
- kind: tar
  url: github_com:libfuse/libfuse/releases/download/fuse-2.9.7/fuse-2.9.7.tar.gz
  ref: 832432d1ad4f833c20e13b57cf40ce5277a9d33e483205fc63c78111b3358874
- kind: patch
  path: files/fuse/fuse-kernel-h-clean-includes.patch
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
