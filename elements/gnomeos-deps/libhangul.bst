kind: autotools

sources:
- kind: tar
  url: github_files:libhangul/libhangul/releases/download/libhangul-0.2.0/libhangul-0.2.0.tar.gz
  ref: ea04e6a0cf4840a2a3b5641c1761068c78691036db839d0838f4e7a6553a5120

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
