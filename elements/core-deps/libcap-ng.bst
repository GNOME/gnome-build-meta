kind: autotools

sources:
- kind: tar
  url: https://people.redhat.com/sgrubb/libcap-ng/libcap-ng-0.8.3.tar.gz

  ref: bed6f6848e22bb2f83b5f764b2aef0ed393054e803a8e3a8711cb2a39e6b492d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-python
    --without-python3
