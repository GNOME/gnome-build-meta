kind: autotools

sources:
- kind: tar
  url: nlnetlabs:ldns/ldns-1.9.2.tar.gz
  ref: b524fa21994b6e834200ceb8c27f1b84bda5982fe35706f058196c079db94d5d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
