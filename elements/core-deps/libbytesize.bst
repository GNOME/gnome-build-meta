kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libbytesize/releases/download/1.2/libbytesize-1.2.tar.gz
  ref: 65656ed62080d73d0f21d9647cee20533377bee150e91807fd54c502f3e1108f
depends:
- core-deps/mpfr.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
