kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
