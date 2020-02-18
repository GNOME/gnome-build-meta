kind: autotools
sources:
- kind: tar
  url: github_com:thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
  ref: b7287637ae71c6db6f89e1422c995f0407ff2fe50cecd61a312b6a9b0921f5bf
depends:
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
