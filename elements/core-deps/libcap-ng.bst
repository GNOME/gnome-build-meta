kind: autotools

sources:
- kind: tar
  url: https://people.redhat.com/sgrubb/libcap-ng/libcap-ng-0.8.2.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-python
    --without-python3
