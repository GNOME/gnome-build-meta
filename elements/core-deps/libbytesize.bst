kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libbytesize/releases/download/1.2/libbytesize-1.2.tar.gz
  ref: 65656ed62080d73d0f21d9647cee20533377bee150e91807fd54c502f3e1108f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mpfr.bst
- freedesktop-sdk.bst:components/pcre.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
