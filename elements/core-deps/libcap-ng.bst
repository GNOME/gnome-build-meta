kind: autotools

sources:
- kind: tar
  url: https://people.redhat.com/sgrubb/libcap-ng/libcap-ng-0.8.2.tar.gz

  ref: 52c083b77c2b0d8449dee141f9c3eba76e6d4c5ad44ef05df25891126cb85ae9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-python
    --without-python3
