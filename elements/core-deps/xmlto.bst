kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2
  ref: 1130df3a7957eb9f6f0d29e4aa1c75732a7dfb6d639be013859b5c7ec5421276
depends:
- filename: components/util-linux.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
