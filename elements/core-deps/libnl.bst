kind: autotools
sources:
- kind: tar
  url: github_com:thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
  ref: b7287637ae71c6db6f89e1422c995f0407ff2fe50cecd61a312b6a9b0921f5bf
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
