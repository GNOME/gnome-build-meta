kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/a/anthy/anthy_0.3.orig.tar.gz
  ref: 5dae9f0755df76b48a7f606553dd06d85313ec77cea3724fcd2c6ebeecf53d69
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
