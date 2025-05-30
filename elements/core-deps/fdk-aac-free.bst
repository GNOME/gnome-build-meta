kind: autotools

sources:
- kind: tar
  url: freedesktop_people:~wtay/fdk-aac-free-2.0.0.tar.gz
  ref: 5c4a27656463e22861e4e917796d586687abff418d5b5928724a728f10f39cd7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
